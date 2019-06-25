import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/page/mine/orderFilterPopup1.dart';
import 'package:otc/ui/page/mine/orderFilterPopup2.dart';
import 'package:otc/ui/widget/tagList.dart';
import 'package:otc/values/color.dart';

import 'backlogOrderWidget.dart';

///广告
class OrderListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OrderListPageState();
  }
}

class _OrderListPageState extends State<OrderListPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<TagBean> tagList =
      List.generate(3, (index) => TagBean("${index}辅导费", false));
  final List<TagBean> tagList2 =
      List.generate(2, (index) => TagBean("${index}辅导费", false));

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
        title: Container(
          width: 180,
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
                    "待办订单",
                    style: TextStyle(
                        color: _isLeft ? c_2B3F77 : Colors.white, fontSize: 14),
                  ),
                ),
                Tab(
                  child: Text(
                    "在线订单",
                    style: TextStyle(
                        color: _isLeft ? Colors.white : c_2B3F77, fontSize: 14),
                  ),
                )
              ]),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              if (_isLeft) {
                createSelectPopupWindow(tagList, tagList2, context: context);
              } else {
                createSelectPopupWindow2(tagList, context: context);
              }
            },
          ),
        ],
      ),
      body: _isLeft ? BackLogOrderWidget() : BackLogOrderWidget(),
    );
  }
}
