import 'dart:developer';

import 'package:amplified_todo/features/data/services/user_activity.dart';
import 'package:amplified_todo/features/presentation/pages/account/account_view.dart';
import 'package:amplified_todo/features/presentation/pages/search/seach_view.dart';
import 'package:amplified_todo/features/presentation/pages/shop_list/shop_list_view.dart';
import 'package:amplified_todo/features/presentation/pages/home_page.dart';
import 'package:amplified_todo/models/ModelProvider.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:amplified_todo/features/presentation/pages/message.dart';

class DashboardPage extends StatefulWidget {
  final int index;
  const DashboardPage({
    this.index = 0,
    Key? key,
  }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with WidgetsBindingObserver {
  late int _currentIndex;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);

    _currentIndex = widget.index;
    _pages = [
      const HomePage(),
      const SearchPage(),
      const ShopList(),
      const MessageWidget(),
      const AccountScreen(),
    ];
    setUserOnline();
  }

  void setUserOnline() async {
    await UserActivityService().setUserOnline();
  }

  void setUserOffline() async {
    await UserActivityService().setUserOffline();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        setUserOnline();
        break;
      default:
        setUserOffline();
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  Future<bool> _onWillPop() async {
    if (_currentIndex != 0) {
      setState(() {
        _currentIndex = 0;
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return WillPopScope(
          onWillPop: () async => _onWillPop(),
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.red,
              selectedFontSize: 0,
              unselectedItemColor: Colors.white,
              currentIndex: _currentIndex,
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Home 3.png")),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/Search 2.png")),
                    label: ""),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/add.png")),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Message 30.png")),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded),
                  label: "",
                )
              ],
            ),
            body: _pages[_currentIndex],
          ),
        );
      },
    );
  }
}
