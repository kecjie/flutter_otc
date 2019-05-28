import 'package:flutter/material.dart';
import 'package:otc/main/advertise/publishAdPage.dart';
import 'package:otc/values/color.dart';

import 'payAdvertise.dart';

///广告
class AdvertisePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AdvertisePageState();
  }
}

class AdvertisePageState extends State<AdvertisePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          width: 130,
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: TabBar(
              onTap: _onTab,
              controller: _tabController,
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
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: c_2B3F77,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("发布",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
              Text("广告",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
            ],
          ),
          onPressed: () => {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PublishAdPage()))
              }),
      body: _isLeft ? PayAdvertise() : PayAdvertise(),
    );
  }
}
