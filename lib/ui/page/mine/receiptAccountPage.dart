import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/dialog/bottomSheet.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'nameAuthResultPage.dart';

///收款账户
class ReceiptAccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ReceiptAccountPageState();
  }
}

class _ReceiptAccountPageState extends State<ReceiptAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "收款账户", actions: <Widget>[
        InkWell(
            onTap: () {
              selectReceiptAccount(context);
            },
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                    child: Text(
                  "添加",
                  style: TextStyle(color: Colors.white),
                )))),
      ]),
      body: _showContent(),
    );
  }

  Widget _showContent() {
    return Random().nextInt(2)==0?_getNoContent():_getContent();
  }

  Widget _getNoContent() {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(top: 123),
      child: Text(
        "暂无收款账户",
        style: TextStyle(color: c_ACACAC, fontSize: 17),
      ),
    );
  }

  Widget _getContent() {
    return Container(
      child: Column(
        children: <Widget>[
          _getBankCodeItem(),
          _getAliPayItem()
        ],
      ),
    );
  }

  Widget _getBankCodeItem() {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 15,right: 15,top: 21),
      child: Container(
        alignment: Alignment.center,
        height: 110,
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("张锋"),
            SizedBox(height: 11,),
            Row(
              children: <Widget>[
                Icon(Icons.satellite),
                Padding(padding: EdgeInsets.only(left: 12)),
                Expanded(child: Text("535235252525252525")),
                Text("银行卡"),
                Padding(padding: EdgeInsets.only(left: 23)),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            Container(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "中国工商银行",
                  style: TextStyle(color: c_959595),
                ))
          ],
        ),
      ),
    );
  }

  Widget _getAliPayItem() {
    return Card(
      elevation: 5,
      margin: EdgeInsets.only(left: 15,right: 15,top: 8),
      child: Container(
        alignment: Alignment.center,
        height: 110,
        padding: EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16,),
            Text("张锋"),
            SizedBox(height: 11,),
            Row(
              children: <Widget>[
                Icon(Icons.satellite),
                Padding(padding: EdgeInsets.only(left: 12)),
                Text("14353453535"),
                Padding(padding: EdgeInsets.only(left: 20)),
                Expanded(child: Text("支付宝")),
                Icon(Icons.camera),
                Padding(padding: EdgeInsets.only(left: 38)),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
