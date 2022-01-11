import 'package:amplified_todo/features/presentation/pages/add_shop/add_shop_view.dart';
import 'package:amplified_todo/features/presentation/pages/all_review_page.dart';
import 'package:amplified_todo/features/presentation/pages/home_product.dart';
import 'package:amplified_todo/features/presentation/pages/search/seach_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:amplified_todo/features/presentation/pages/message.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _pageController = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomeProduct(),
      const SearchPage(),
      const AddShop(),
      const MessageWidget(),
      const AllReviewPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red,
            selectedFontSize: 0,
            unselectedItemColor: Colors.white,
            currentIndex: _pageController,
            onTap: (value) {
              _pageController = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Home 3.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Search 2.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/add.png")), label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Message 30.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/profile1.jpg")), label: "")
            ],
          ),
          body: _pages[_pageController],
        );
      },
    );
  }
}
