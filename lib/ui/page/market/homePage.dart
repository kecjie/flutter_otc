import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/color.dart';

import 'extractPage.dart';
import 'gatheringPage.dart';
import 'homeContent.dart';
import 'payPage.dart';
import 'rechargePage.dart';
import 'transferPage.dart';

/**
 * 首页
 */
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Widget _searchHint;

  //搜索框
  Widget _getSearchHint() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.search,
          color: Colors.white,
        ),
        Text(
          "搜索",
          style: TextStyle(color: Colors.white, fontSize: 14),
        )
      ],
    );
  }

  _toggleSearchInput(String value) {
    setState(() {
      if (value == null || value.length == 0) {
        _searchHint = _getSearchHint();
      } else {
        _searchHint = Container();
      }
    });
  }

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _searchHint = _getSearchHint();
    _tabController = new TabController(vsync: this, length: 8);
  }

  Widget _getTag(String iconName, String tagName, Function onTap) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(iconName, height: 46, width: 46, fit: BoxFit.fill),
            Padding(
              padding: EdgeInsets.only(top: 6),
            ),
            Text(
              tagName,
              style: TextStyle(color: c_404040, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }

  //5个tab功能
  Widget _getFiveTab() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: <Widget>[
          _getTag("images/bg.jpg", "扫一扫", () => {openPage(context, PayPage())}),
          _getTag(
              "images/bg.jpg", "转账", () => {openPage(context, TransterPage())}),
          _getTag("images/bg.jpg", "收款",
              () => {openPage(context, GatheringPage())}),
          _getTag(
              "images/bg.jpg", "充币", () => {openPage(context, RechargePage())}),
          _getTag(
              "images/bg.jpg", "提币", () => {openPage(context, ExtractPage())}),
        ],
      ),
    );
  }

  Widget _getTabBar() {
    return TabBar(
      isScrollable: true,
      controller: _tabController,
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: c_2B3F77,
      unselectedLabelColor: c_86868B,
      indicatorColor: c_2B3F77,
      tabs: <Widget>[
        Tab(
          text: "USDT",
        ),
        Tab(
          text: "BTC",
        ),
        Tab(
          text: "ETH",
        ),
        Tab(
          text: "BCH",
        ),
        Tab(
          text: "DASH",
        ),
        Tab(
          text: "LTC",
        ),
        Tab(
          text: "EOS",
        ),
        Tab(
          text: "AOT",
        ),
      ],
    );
  }

  //内容
  Widget _getContent() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        HomeContent(),
        Center(child: new Text('船')),
        Center(child: new Text('sdfsf')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              SizedBox(
                  width: 200,
                  height: 40,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: c_3D4F82,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      TextField(
                        onChanged: (value) {
                          _toggleSearchInput(value);
                        },
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                      _searchHint
                    ],
                  )),
            ],
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false),
      body: Column(
        children: <Widget>[
          Image.asset("images/bg.jpg",
              height: 148, width: double.infinity, fit: BoxFit.fitWidth),
          _getFiveTab(),
          Container(
            color: c_F0F0F0,
            height: 8,
          ),
          _getTabBar(),
          Container(
            color: c_F0F0F0,
            height: 8,
          ),
          Expanded(
            child: _getContent(),
          )
        ],
      ),
    );
  }
}
