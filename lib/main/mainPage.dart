import 'package:flutter/material.dart';

import 'package:otc/main/advertise/advertisePage.dart';
import 'appBottomNavigationBar.dart';

import 'package:otc/main/deal/dealPage.dart';
import 'package:otc/main/market/homePage.dart';
import 'package:otc/main/mine/minePage.dart';
import 'package:otc/main/wallet/walletPage.dart';

/**
 * 主页
 */
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  int _tabIndex = 0;

  List<Widget> _pageList = [
    HomePage(),
    DealPage(),
    AdvertisePage(),
    WalletPage(),
    MinePage()
  ];

  _changePage(int index) {
    setState(() {
      _tabIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar:
          AppBottomNavigationBar((index) => {_changePage(index)}),
    );
  }
}
