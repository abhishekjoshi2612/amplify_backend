import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  int ind = 0;
  final item = List.generate(10, (index) => "Floyd Miles");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, ind) {
          final items = item[ind];
          return InkWell(
            onTap: () {
              // Get.to(
              //   () => ChatPageWidget(userTo: null,),
              // );
            },
            child: ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(80)),
                  child: Image.asset(
                    "assets/profile3.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(items),
              subtitle: const Text("Perfect!"),
              trailing: const Text("11:30 P.M."),
            ),
          );
        },
      ),
    );
  }
}
