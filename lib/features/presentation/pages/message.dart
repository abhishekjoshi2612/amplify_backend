import 'package:flutter/material.dart';
import 'package:amplified_todo/features/presentation/widgets/callpage.dart';
import 'package:amplified_todo/features/presentation/widgets/messagepage.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({Key? key}) : super(key: key);

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SafeArea(
            child: TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(text: "Calls"),
                Tab(text: "Messages"),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CallPage(),
            MessagePage(),
          ],
        ),
      ),
    );
  }
}
