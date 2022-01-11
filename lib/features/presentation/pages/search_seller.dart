import 'package:flutter/material.dart';




class SearchSeller extends StatelessWidget {
  SearchSeller({Key? key}) : super(key: key);


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
      child: Column(
        children: [
          Container(
            child: _sellerList(),
          ),
        ],
      ),
    );
  }

Widget _sellerList() {
  return Expanded(
    child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)), border:  Border.all(

                  width: 1,
                ),
                color: Colors.white12

                ),
                height: 300,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 10, right: 20),
                            child: Container(
                              child: Image.asset(
                                "assets/32 (1).png",
                                alignment: Alignment.center,
                                fit: BoxFit.fill,
                              ),
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text("Max Fashion",style: TextStyle(fontWeight: FontWeight.w900,
                            fontSize: 20),),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Positioned(
                              top: 5,
                              left: 13,
                              child: Text(
                                '. Follow',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1428571428571428),
                              )),
                        ),


                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: myProducts.length,
                        itemBuilder: (BuildContext ctx, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
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
                            ),
                          );
                        },
                      ),
                    )
              ]),)
            ],
          );
        }),
  );
}

}