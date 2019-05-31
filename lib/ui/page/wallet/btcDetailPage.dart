import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otc/bean/btcDetailBean.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/dialog/bottomSheet.dart';
import 'package:otc/ui/widget/drawer.dart';
import 'package:otc/values/color.dart';

///btn明细
class BtcDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BtcDetailPage();
  }
}

class _BtcDetailPage extends State<BtcDetailPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<BtcDetailBean> payBeans = List.generate(20, (index) => BtcDetailBean());

  final List<PayTypeTag> tagList = [
    PayTypeTag("提币", true),
    PayTypeTag("充币", false),
    PayTypeTag("划转", false),
  ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return _getHome();
  }

  Widget _getHome() {
    return Scaffold(
      key: _scaffoldKey,
      appBar: titleBar(context, "Btc明细", actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Fluttertoast.showToast(msg: "ddddddd==");
            _scaffoldKey.currentState.openEndDrawer();
          },
        ),
      ]),
      endDrawer: Drawer(
        child: Container(
          child: DealDrawer(),
        ),
      ),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Container(
      color: c_F2F2F2,
      child: Column(
        children: <Widget>[
          _getTabBar(),
          Expanded(child: _getTabBarView()),
        ],
      ),
    );
  }

  Widget _getItem(BtcDetailBean payBean, int index) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
      ),
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15),
            ),
            Expanded(
                child: Text(
              "BTC",
              style: TextStyle(fontSize: 15, color: c_1B1B1B),
            )),
            SizedBox(
              width: 40,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.all(0),
                onPressed: () => {showBottom(context)},
                child: Text(
                  "提币",
                  style: TextStyle(fontSize: 12, color: c_2B3F77),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
            ),
          ],
        ),
        Divider(
          height: 0,
        ),
        SizedBox(
          height: 2,
        ),
        _getItemText("数量", "10000USDSF"),
        _getItemText('地址', 'dsfsdfsdfsdfsd'),
        _getItemText('时间', "1324234234234234"),
        Padding(
          padding: EdgeInsets.only(bottom: 13),
        )
      ]),
    );
  }

  Widget _getItemText(String title, String content) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyle(color: c_1B1B1B, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTabBarView() {
    return TabBarView(controller: _tabController, children: <Widget>[
      _getListView(),
      _getListView(),
      Center(child: new Text('船')),
    ]);
  }

  Widget _getListView() {
    return ListView.builder(
        itemCount: payBeans.length,
        itemBuilder: (context, index) {
          var payBean = payBeans[index];
          return _getItem(payBean, index);
        });
  }

  Widget _getTabBar() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      color: Colors.white,
      child: TabBar(
        controller: _tabController,
        labelColor: c_2B3F77,
        unselectedLabelColor: c_86868B,
        indicatorColor: c_2B3F77,
        tabs: <Widget>[
          Tab(
            text: "已完成",
          ),
          Tab(
            text: "进行中",
          ),
          Tab(
            text: "已取消",
          ),
        ],
      ),
    );
  }
}
