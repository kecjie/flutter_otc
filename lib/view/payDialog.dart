import 'package:flutter/material.dart';
import 'package:otc/main/deal/payDetailPage.dart';
import 'package:otc/values/values.dart';
import 'package:otc/commom/commom_ui.dart';

class PayDialog extends StatefulWidget {
  PayDialog({Key key}) : super(key: key);

  _PayDialogState createState() => _PayDialogState();
}

class _PayDialogState extends State<PayDialog>
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(26), topRight: Radius.circular(6))),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 55,
            color: c_F2F4FA,
            child: Row(
              children: <Widget>[
                Text(
                  "购买ETH ",
                  style: TextStyle(color: c_1B1B1B, fontSize: 18),
                ),
                Text.rich(TextSpan(text: "(单价", children: <TextSpan>[
                  TextSpan(
                      text: "7523",
                      style: TextStyle(color: c_2B3F77),
                      children: <TextSpan>[TextSpan(text: ")")])
                ]))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: <Widget>[
                TabBar(
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: c_2B3F77,
                  unselectedLabelColor: c_86868B,
                  indicatorColor: c_2B3F77,
                  tabs: <Widget>[Tab(text: "按数量购买"), Tab(text: "按金额购买")],
                ),
                SizedBox(
                  height: 210,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      _getContent(),
                      _getContent(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 14),
          height: 45,
          constraints: BoxConstraints(maxHeight: 45),
          decoration: BoxDecoration(border: Border.all(color: c_ACACAC)),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "请输入欲购买法币金额",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15)),
                ),
              ),
              Text("CNY"),
              // VerticalDivider(),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "全部买入",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text("限额3000-50000", style: TextStyle(color: c_2B3F77, fontSize: 14)),
        Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        Row(
          children: <Widget>[
            Text("交易数量"),
            Expanded(
              child: Text(
                "0.00000ETH",
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        Row(
          children: <Widget>[
            Text("交易总额"),
            Expanded(
              child: Text(
                "0.00",
                style: TextStyle(color: c_2B3F77, fontSize: 25),
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            getBtn2(height: 40, width: 165, text: "26s后自动取消"),
            getBtn2(
                height: 40,
                width: 165,
                text: "下单",
                textColor: Colors.white,
                color: c_2B3F77,
                onPressed: () {
                  openPage(context, PayDetailPage());
                }),
          ],
        ),
      ],
    );
  }
}
