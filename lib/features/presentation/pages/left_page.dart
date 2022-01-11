import 'package:flutter/material.dart';

class LeftPage extends StatefulWidget {
  const LeftPage({Key? key}) : super(key: key);

  @override
  _LeftPageState createState() => _LeftPageState();
}

class _LeftPageState extends State<LeftPage> {
  late List<String> product = ["Product1", "Product2", "Product3"];
  //FakeRepository.data[index].products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("Shop Data"),
      ),
      body: ListView.builder(
        itemCount: product.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Card(
                child: ListTile(
              onTap: () {},
              title: Text(product[index]),
            )),
          );
        },
      ),
    );
  }
}
