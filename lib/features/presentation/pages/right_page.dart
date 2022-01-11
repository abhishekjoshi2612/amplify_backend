import 'package:amplified_todo/features/data/repository/fake_repository.dart';
import 'package:flutter/material.dart';

class RightPage extends StatefulWidget {
  final int index;
  const RightPage({Key? key, required this.index}) : super(key: key);

  @override
  _RightPageState createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  @override
  Widget build(BuildContext context) {
    var carouselController;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Shop Data"),
      ),
      body: ListView.builder(
        controller: carouselController,
        itemCount: FakeRepository2.data[widget.index].product_items.length,
        itemBuilder: (context, ind) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Card(
                child: ListTile(
              onTap: () {},
              title: Text(
                  FakeRepository2.data[widget.index].product_items[ind].name),
            )),
          );
        },
      ),
    );
  }
}
