import 'package:amplified_todo/features/presentation/widgets/button.dart';
import 'package:amplified_todo/features/presentation/widgets/textfield.dart';
import 'package:flutter/material.dart';

class ManageShop extends StatelessWidget {
  ManageShop({Key? key}) : super(key: key);

  final List<Map> myProduct = [
    {
      "index": 1,
      "name": "Women Red Solid Maxi1",
      "name1": "999/- 3,999/-",
      "img": "assets/Group 203.png"
    },
    {
      "index": 2,
      "name": "Women Red Solid Maxi2",
      "name1": "999/- 3,999/-",
      "img": "assets/grid1.png"
    },
    {
      "index": 3,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid2.png"
    },
    {
      "index": 4,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid3.png"
    },
    {
      "index": 5,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/Group 203.png"
    },
    {
      "index": 6,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid1.png"
    },
    {
      "index": 7,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid2.png"
    },
    {
      "index": 8,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid3.png"
    },
    {
      "index": 9,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/Group 203.png"
    },
    {
      "index": 10,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid1.png"
    },
    {
      "index": 11,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid2.png"
    },
    {
      "index": 12,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/grid3.png"
    },
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Your Shop"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      child: Image.asset(
                        "assets/profile1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Text("Megadeath",
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
            ButtonWidget(text: "Add Product", onTap: () {}),
            CommonTextField(hintText: "Search your shop"),
            const SizedBox(height: 20),
            Stack(children: <Widget>[
              SizedBox(
                height: 1000,
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 180,
                            childAspectRatio: 1 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 30),
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                          child: Column(
                            children: [
                              Expanded(child: Container()),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(myProduct[index]["name"])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    myProduct[index]["name1"],
                                    textAlign: TextAlign.left,
                                  )),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(myProduct[index]["img"]),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
