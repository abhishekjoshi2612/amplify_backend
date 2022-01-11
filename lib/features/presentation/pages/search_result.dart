import 'package:amplified_todo/features/presentation/pages/search_product.dart';
import 'package:amplified_todo/features/presentation/pages/search_seller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


import 'home_seller_details.dart';


class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  int _followingForYouController = 0;


  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        var controller;
        return Container(
          color: Colors.black,
          child: Scaffold(
              backgroundColor: Colors.black,
              body: Stack(
                children: <Widget>[
                  if(_followingForYouController == 1)
                  SearchProduct(),
                  if(_followingForYouController == 0)
                    SearchSeller(),
                  _appbar(),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0,left: 65),
                    child: Text("526 Results",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white54,
                        fontSize: 18),),
                  ),
                  _topWidgetFollowingAndTrending(),

                ],
              )),
        );
      },
    );
  }
Widget _appbar(){
    return Container(
      child: Row(
        children: [
          SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Text("Tshirts",style: TextStyle(fontWeight: FontWeight.w600,
              fontSize: 20),),

          Expanded(
            child: SizedBox(
              width: 70,
            ),
          ),
          Image.asset("assets/Search 2.png"),
          SizedBox(
            width: 20,
          ),
          Image.asset("assets/Heart 2.png"),
          SizedBox(
            width: 20,
          ),
          Image.asset("assets/hamburg.png"),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
}

  Widget _topWidgetFollowingAndTrending() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 130),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 70,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _followingForYouController = 0;
                  });
                },
                child: Text("Seller",
                    style: _textStyleFollowingForYou(
                        _followingForYouController == 0
                            ? Colors.white
                            : Colors.white60))),
             Expanded(
               child: SizedBox(
                width: 100,
            ),
             ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    _followingForYouController = 1;
                  });
                },
                child: Text("Product",
                    style: _textStyleFollowingForYou(
                        _followingForYouController == 1
                            ? Colors.white
                            : Colors.white60))),
            SizedBox(
              width: 70,
            ),
          ],
        ),
      ),
    );
  }



  TextStyle _textStyleFollowingForYou(Color color) {
    return TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.w500);
  }
}
