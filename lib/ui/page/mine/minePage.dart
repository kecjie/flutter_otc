import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/commom/titleBar.dart';
import 'package:otc/values/color.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'bindEmailPage.dart';
import 'modifyPhonePage.dart';
import 'modifyPwdPage.dart';
import 'nameAuthPage.dart';
import 'nameAuthResultPage.dart';
import 'orderListPage.dart';
import 'receiptAccountPage.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  Widget _getUnLoginState() {
    return Text(
      "请登录",
      style: TextStyle(color: Colors.white, fontSize: 18),
    );
  }

  Widget _getLoginedState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "1355646464646",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2),
        ),
        Text(
          "ID:1323232",
          style: TextStyle(color: c_D0D0D0, fontSize: 12),
        ),
      ],
    );
  }

  bool _isLogin = false;

  _changeLoginState() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(context, "我的",
          backgroundColor: Theme.of(context).primaryColor,
          showLeading: false,
          titltColor: Colors.white),
      body: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            child: SizedBox(
              width: double.infinity,
              height: 106,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                  ),
                  InkWell(
                    onTap: () => {_changeLoginState()},
                    child: _isLogin ? _getLoginedState() : _getUnLoginState(),
                  )
                ],
              ),
            ),
          ),
          MineBody(),
          Expanded(
            child: Container(
              color: c_F0F0F0,
            ),
          )
        ],
      ),
    );
  }
}

class MineBody extends StatelessWidget {
  Widget _getItem(IconData leftIcon, String title, String rigthTitle,
      IconData rightIcon, Function onTap,
      {bool showLine: true}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 15, right: 15),
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: c_F0F0F0))),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Icon(leftIcon),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                  ),
                  Text(
                    title,
                    style: TextStyle(color: c_1B1B1B, fontSize: 14),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Text(rigthTitle,
                    style: TextStyle(color: c_86868B, fontSize: 12)),
                Icon(rightIcon)
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: c_F0F0F0,
          height: 8,
        ),
        //下部分
        _getItem(Icons.phone, "手机号", "15634345353", Icons.chevron_right,
            () => {openPage(context, ModifyPhonePage())}),
        _getItem(Icons.email, "邮箱", "绑定", Icons.chevron_right,
            () => {openPage(context, BindEmailPage())}),
        _getItem(Icons.email, "实名认证", "", Icons.chevron_right, () {
          var nextInt = Random().nextInt(3);
          switch (nextInt) {
            case 0:
              openPage(context, NameAuthPage());
              break;
            case 1:
              openPage(context, NameAuthResultPage(1));
              break;
            case 2:
              openPage(context, NameAuthResultPage(2));
              break;
          }
        }),
        Container(
          color: c_F0F0F0,
          height: 8,
        ),
        _getItem(Icons.email, "登录密码设置", "", Icons.chevron_right,
            () => {openPage(context, ModifyPwdPage())}),
        _getItem(Icons.email, "资金密码设置", "", Icons.chevron_right, () => {}),
        Container(
          color: c_F0F0F0,
          height: 8,
        ),
        _getItem(Icons.email, "历史订单", "", Icons.chevron_right, () => {
          openPage(context, OrderListPage())
        }),
        _getItem(Icons.email, "财务明细", "", Icons.chevron_right, () => {}),
        Container(
          color: c_F0F0F0,
          height: 8,
        ),
        _getItem(Icons.email, "收款账户设置", "", Icons.chevron_right,
            () => {openPage(context, ReceiptAccountPage())}),
        _getItem(Icons.email, "提币地址设置", "", Icons.chevron_right, () => {}),
      ],
    );
  }
}
