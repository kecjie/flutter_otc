import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

import 'setMoneyCountPage.dart';
import 'setMoneyTypePage.dart';

///充币
class RechargePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RechargePageState();
  }
}

class _RechargePageState extends State<RechargePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_2B3F77,
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "充币"),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Column(
      children: <Widget>[
        Container(
          height: 44,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(2))),
          margin: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 9),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: <Widget>[
              Expanded(child: Text("BTC")),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(2))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 42,
              ),
              Image.network(
                "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58",
                width: 217,
                height: 217,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 19,
              ),
              Text("sdfsdfsdfsfsfsfsdfsfdsf",style: TextStyle(color: c_464646,fontSize: 16),),
              SizedBox(
                height: 19,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              getBtn(
                "复制链接",
                () {},
                width: 168,
                btnColor: Colors.white,
                textColor: c_2B3F77,
              ),
              getBtn(
                "分享图片",
                () {},
                width: 168,
                btnColor: Colors.white,
                textColor: c_2B3F77,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
