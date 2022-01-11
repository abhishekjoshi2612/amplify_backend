import 'package:flutter/material.dart';


class SellerDetails extends StatefulWidget {
  const SellerDetails({Key? key}) : super(key: key);

  @override
  _SellerDetailsState createState() => _SellerDetailsState();
}

class _SellerDetailsState extends State<SellerDetails> {

  final List<Map> myProducts =[{"index": 1, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/Group 203.png"},
    {"index": 2, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid1.png"},
    {"index": 3, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid2.png"},
    {"index": 4, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid3.png"},
    {"index": 5, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/Group 203.png"},
    {"index": 6, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid1.png"},
    {"index": 7, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid2.png"},
    {"index": 8, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid3.png"},
    {"index": 9, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/Group 203.png"},
    {"index": 10, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid1.png"},
    {"index": 11, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid2.png"},
    {"index": 12, "name": "Women Red Solid Maxi", "name1": "999/- 3,999/-","img": "assets/grid3.png"},]


      .toList();



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Container(height: 35,),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height*0.89,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 1.5 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(child: Container()),
                              Align(alignment: Alignment.centerLeft,
                                  child: Text(myProducts[index]["name"])),
                              Align(alignment: Alignment.centerLeft,
                                  child: Text(myProducts[index]["name1"],textAlign: TextAlign.left,)),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            image:  DecorationImage(
                              image: AssetImage(
                                  myProducts[index]["img"]),fit: BoxFit.fill,),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
