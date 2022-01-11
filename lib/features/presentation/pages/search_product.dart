import 'package:flutter/cupertino.dart';

class SearchProduct extends StatelessWidget {
   SearchProduct({Key? key}) : super(key: key);

  final List<Map> myProducts = [
    {
      "index": 1,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p1.png"
    },
    {
      "index": 2,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p2.png"
    },
    {
      "index": 3,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p3.png"
    },
    {
      "index": 4,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p4.png"
    },
    {
      "index": 5,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p5.png"
    },
    {
      "index": 6,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p6.png"
    },
    {
      "index": 7,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p1.png"
    },
    {
      "index": 8,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p2.png"
    },
    {
      "index": 9,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p3.png"
    },
    {
      "index": 10,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p4.png"
    },
    {
      "index": 11,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p5.png"
    },
    {
      "index": 12,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p6.png"
    },
    {
      "index": 13,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p1.png"
    },
    {
      "index": 14,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p2.png"
    },
    {
      "index": 15,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p3.png"
    },
    {
      "index": 16,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p4.png"
    },
    {
      "index": 17,
      "name": "Women Red Solid Maxi",
      "name1": "999/- 3,999/-",
      "img": "assets/p5.png"
    },
  ].toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150.0),
      child: Container(
        height: 1000,
        child: GridView.builder(
            itemCount: 17,
            gridDelegate:
            const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 1.5 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 8.0, bottom: 5),
                  child: Stack(
                    children:[ Column(
                      children: [
                        Expanded(child: Container()),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(myProducts[index]["name"])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              myProducts[index]["name1"],
                              textAlign: TextAlign.left,
                            )),
                      ],
                    ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0,top: 5),
                        child: Image.asset("assets/Heart 2.png"),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(myProducts[index]["img"]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(15)),
              );
            }),
      ),
    );
  }
}
