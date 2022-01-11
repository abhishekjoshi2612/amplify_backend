import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  int ind = 0;
  final item = List.generate(10, (index) => "Jane Copper");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (context, ind) {
            final items = item[ind];
            return ListTile(
              leading: SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(80)),
                  child: Image.asset(
                    "assets/profile1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(items),
              subtitle: const Text("Today.7:30 A.M."),
              trailing: const ImageIcon(AssetImage("assets/Vector.png")),
            );
          }),
    );
  }
}
