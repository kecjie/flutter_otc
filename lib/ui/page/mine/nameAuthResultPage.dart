import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NameAuthResultPage extends StatefulWidget {
  int authState = 0;

  NameAuthResultPage(this.authState);

  @override
  State<StatefulWidget> createState() {
    return _NameAuthResultPageState();
  }
}

class _NameAuthResultPageState extends State<NameAuthResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "实名认证"),
      body: _showResult(),
    );
  }

  Widget _showResult() {
    switch (widget.authState) {
      case 0:
        return _getResult1();
      case 1:
        return _getResult2("sdfsd", "sdfssdfdfsfsfsfsfsfdsf");
      case 2:
        return _getResult3("身份证过期");
    }
  }

  ///等待审核
  Widget _getResult1() {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 130,
          ),
          Image.asset(
            "images/icon.png",
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "您的实名认证已提交，等待审核",
            style: TextStyle(color: c_404040, fontSize: 15),
          ),
        ],
      ),
    );
  }

  ///通过认证
  Widget _getResult2(String name, String code) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 130,
          ),
          Image.asset(
            "images/icon.png",
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "您的身份信息已通过认证",
            style: TextStyle(color: c_404040, fontSize: 15),
          ),
          Container(
            margin: EdgeInsets.only(top: 67, left: 15, right: 15),
            color: c_F2F4FA,
            width: MediaQuery.of(context).size.width,
            height: 160,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(width: 80, child: Text("姓名：")),
                      Text(name)
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(width: 80, child: Text("身份证号：")),
                      Text(code)
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ///认证失败
  Widget _getResult3(String reason) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 130,
          ),
          Image.asset(
            "images/icon.png",
            width: 50,
            height: 50,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "您的身份信息审核不通过",
            style: TextStyle(color: c_404040, fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "拒绝原因：$reason",
            style: TextStyle(color: c_626262, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
