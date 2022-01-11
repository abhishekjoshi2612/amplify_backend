import 'dart:developer';

import 'package:amplified_todo/features/presentation/pages/chat/controller.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  final UserMaster peer;
  const ChatPage({
    Key? key,
    required this.peer,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late final TextEditingController _textEditingController;
  late final ChatController _chatController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _chatController = ChatController(peer: widget.peer)..init();
    _textEditingController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _chatController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Row(
          children: [
            ClipOval(
              child: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset("assets/grid1.png"),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                "${widget.peer.firstName}\t${widget.peer.lastName}",
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () {
              Get.defaultDialog(
                title: "Video Call",
                titleStyle: const TextStyle(fontSize: 30),
                content: _contentTxt(),
                backgroundColor: Colors.black,
                textCancel: "Scheduled Call",
                cancelTextColor: Colors.white,
                buttonColor: Colors.black,
                textConfirm: "Instant Call",
                confirmTextColor: Colors.white,
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: GetBuilder<ChatController>(
          init: _chatController,
          builder: (controller) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: controller.room == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : StreamBuilder(
                          stream: Amplify.DataStore.observeQuery(
                            ChatData.classType,
                            where: ChatData.ROOMID.eq(controller.room!.id),
                            sortBy: [
                              ChatData.CREATEDAT.descending(),
                            ],
                          ),
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<QuerySnapshot<ChatData>> snapshot,
                          ) {
                            final isEmpty = !snapshot.hasData ||
                                (snapshot.data?.items ?? []).isEmpty;
                            if (isEmpty) {
                              return const Center(
                                child: Text("No messages yet"),
                              );
                            }
                            return ListView.builder(
                              reverse: true,
                              controller: _scrollController,
                              padding: const EdgeInsets.all(10),
                              shrinkWrap: true,
                              itemCount: (snapshot.data?.items ?? []).length,
                              itemBuilder: (
                                BuildContext context,
                                int index,
                              ) {
                                final wasSent = controller.currentUser?.id ==
                                    snapshot.data!.items[index].sentBy;
                                return ChatBubble(
                                  key: UniqueKey(),
                                  chatData: snapshot.data!.items[index],
                                  wasSent: wasSent,
                                  showTimestamp: index == 0,
                                );
                              },
                            );
                          },
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Color.fromRGBO(39, 39, 39, 1),
                    ),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.emoji_emotions),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            controller: _textEditingController,
                            onEditingComplete:
                                () {}, // this prevents keyboard from closing
                            textInputAction: TextInputAction.send,
                            onSubmitted: (e) {
                              _chatController.sendMessage(e);
                              _textEditingController.text = '';
                              _scrollController.animateTo(
                                _scrollController.position.minScrollExtent,
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.easeInOut,
                              );
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type Message",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.camera_alt),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.link),
                          onPressed: () {
                            Get.bottomSheet(const SendOptionsBottomSheet());
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.settings_voice),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            );
          }),
    );
  }

  Widget _contentTxt() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "Do you like to Continue with the Video call",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ChatBubble extends StatefulWidget {
  final ChatData chatData;
  final bool showTimestamp;
  final bool wasSent;
  const ChatBubble({
    Key? key,
    required this.chatData,
    required this.wasSent,
    this.showTimestamp = false,
  }) : super(key: key);

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  bool showTimestamp = false;
  @override
  void initState() {
    super.initState();
    showTimestamp = widget.showTimestamp;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showTimestamp = !showTimestamp;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0),
        child: Align(
          alignment:
              widget.wasSent ? Alignment.centerRight : Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: widget.wasSent
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                    bottomLeft: !widget.wasSent
                        ? Radius.zero
                        : const Radius.circular(10),
                    bottomRight: widget.wasSent
                        ? Radius.zero
                        : const Radius.circular(10),
                  ),
                  color: widget.wasSent ? null : const Color(0xff242629),
                  gradient: widget.wasSent
                      ? const LinearGradient(
                          colors: <Color>[
                            Color(0xffFF4B2B),
                            Color(0xffFF416C),
                          ],
                        )
                      : null,
                ),
                child: Text(widget.chatData.message ?? ""),
              ),
              const Divider(color: Colors.transparent, height: 3),
              showTimestamp
                  ? Text(
                      formatDate(widget.chatData.createdAt),
                      textAlign: TextAlign.right,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  String formatDate(TemporalDateTime? date) {
    if (date == null) {
      return '';
    }
    return DateFormat('jm')
        .format(date.getDateTimeInUtc().toLocal())
        .toString();
  }
}

class SendOptionsBottomSheet extends StatelessWidget {
  const SendOptionsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(255, 70, 69, 69),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _bottomSheetIcon(Icons.photo),
              _bottomSheetIcon(Icons.document_scanner),
              _bottomSheetIcon(Icons.location_on),
              _bottomSheetIcon(Icons.mic),
              _bottomSheetIcon(Icons.camera_alt),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(
            "assets/location.png",
            height: 140,
            width: 300,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 20, 20, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(0.5, -0.5),
                        end: Alignment(0.5, 0.5),
                        colors: [
                          Color.fromRGBO(255, 75, 43, 1),
                          Color.fromRGBO(255, 65, 108, 1)
                        ],
                      ),
                    ),
                    child: const Text(
                      "Continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                      ),
                    ),
                    child: const Text(
                      "Live Location",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Inter',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 2),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _bottomSheetIcon(
    IconData icons,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Color.fromARGB(255, 109, 106, 106),
        ),
        child: Icon(icons),
      ),
    );
  }
}
