import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

import 'setMoneyCountPage.dart';
import 'setMoneyTypePage.dart';

///收款
class GatheringPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GatheringPageState();
  }
}

class _GatheringPageState extends State<GatheringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_2B3F77,
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "收款"),
      body: _showContent(),
    );
  }

  Widget _showContent() {
    int random = Random().nextInt(2);
    if (random == 0) {
      return _getContent();
    } else {
      return _getContent2();
    }
  }

  Widget _getContent() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 27,
              ),
              Text("扫一扫,向我付钱"),
              SizedBox(
                height: 16,
              ),
              Image.network(
                "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58",
                width: 217,
                height: 217,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      openPage(context, SetMoneyTypePage());
                    },
                    child: Text(
                      "设置币种",
                      style: TextStyle(color: c_4A90E2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    width: 1,
                    height: 15,
                    color: c_F0F0F0,
                  ),
                  InkWell(
                    onTap: () {
                      openPage(context, SetMoneyCountPage());
                    },
                    child: Text(
                      "输入数量",
                      style: TextStyle(color: c_4A90E2),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          child: getBtn(
            "复制二维码",
            () {},
            btnColor: Colors.white,
            textColor: c_2B3F77,
          ),
        ),
      ],
    );
  }

  Widget _getContent2() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 27,
              ),
              Text("扫一扫,向我付钱"),
              SizedBox(
                height: 16,
              ),
              Image.network(
                "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58",
                width: 217,
                height: 217,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 26,
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: 94,
          margin: EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 28),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text("付款币种")),
                  Text("BTC"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(child: Text("付款币种")),
                  Text("BTC"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: getBtn(
            "复制二维码",
            () {},
            btnColor: Colors.white,
            textColor: c_2B3F77,
          ),
        ),
      ],
    );
  }
}
