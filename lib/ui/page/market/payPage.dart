import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

import 'setMoneyCountPage.dart';
import 'setMoneyTypePage.dart';

///付款
class PayPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PayPageState();
  }
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "付款"),
      body: _getContent2(),
    );
  }

  Widget _getContent() {
    return Stack(
      children: <Widget>[
        Container(
          color: c_2B3F77,
          height: 80,
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 34,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Center(child: Text("付款给蒲公英")),
                  SizedBox(
                    height: 46,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("付款币种"),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  Divider(),
                  Text("付款数量"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "24343",
                    style: TextStyle(color: c_404040, fontSize: 20),
                  ),
                  Divider(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "添加备注 （20字以内）", border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 29),
                    child: getBtn(
                      "确认付款",
                      () {},
                      btnColor: c_2B3F77,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _getContent2() {
    return Stack(
      children: <Widget>[
        Container(
          color: c_2B3F77,
          height: 80,
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 34,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Center(child: Text("付款给蒲公英")),
                  SizedBox(
                    height: 46,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("付款币种"),
                      Text("BTC"),
                    ],
                  ),
                  Divider(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("交易数量"),
                      Text("20.67"),
                    ],
                  ),
                  Divider(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(top:10,bottom: 29),
                    child: getBtn(
                      "确认付款",
                      () {},
                      btnColor: c_2B3F77,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
