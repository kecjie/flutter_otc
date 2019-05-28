import 'package:flutter/material.dart';
import 'package:otc/ui/page/advertise/advertisePage.dart';
import 'package:otc/ui/page/deal/dealPage.dart';
import 'package:otc/ui/page/market/homePage.dart';

import 'package:otc/ui/page/mine/minePage.dart';
import 'package:otc/ui/page/wallet/walletPage.dart';
import 'appBottomNavigationBar.dart';


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
