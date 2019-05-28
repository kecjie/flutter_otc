import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otc/main/deal/payContent.dart';
import 'package:otc/view/drawer.dart';
import 'package:otc/values/color.dart';

class DealPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DealPageState();
  }
}

class DealPageState extends State<DealPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      _onTab(_tabController.index);
    });
  }

  bool _isLeft = true;

  _onTab(int index) {
    setState(() {
      index == 0 ? _isLeft = true : _isLeft = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          width: 130,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: TabBar(onTap: _onTab, controller: _tabController,
              indicator: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  borderRadius: _isLeft
                      ? BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5))
                      : BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "购买",
                    style: TextStyle(
                        color: _isLeft ? c_2B3F77 : Colors.white, fontSize: 14),
                  ),
                ),
                Tab(
                    child: Text("出售",
                        style: TextStyle(
                            color: _isLeft ? Colors.white : c_2B3F77,
                            fontSize: 14)))
              ]),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              if (Scaffold.of(context).isEndDrawerOpen) {
                Navigator.pop(context);
              } else {
                _scaffoldKey.currentState.openEndDrawer();
              }
              Fluttertoast.showToast(msg: "ddddddd==");
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          child: DealDrawer(),
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        PayContent(),
        PayContent(),
      ]),
      floatingActionButton: Container(
        width: 100,
        height: 44,
        decoration: BoxDecoration(
            border: Border.all(color: c_2B3F77),
            borderRadius: BorderRadius.all(Radius.circular(22))),
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Text("一键交易", style: TextStyle(color: c_2B3F77)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
            onPressed: () => {}),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
