import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'nameAuthResultPage.dart';

///实名认证
class NameAuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NameAuthPageState();
  }
}

class _NameAuthPageState extends State<NameAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "实名认证", actions: <Widget>[
        InkWell(
            onTap: () {
              openPage(context, NameAuthResultPage(0));
            },
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                    child: Text(
                  "提交",
                  style: TextStyle(color: Colors.white),
                )))),
      ]),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          getInput("真实姓名", contentPadding: EdgeInsets.all(15)),
          getInput("身份证号码", contentPadding: EdgeInsets.all(15)),
          SizedBox(
            height: 25,
          ),
          _getImg("images/photo_front.png", () {}),
          SizedBox(
            height: 15,
          ),
          _getImg("images/photo_back.png", () {}),
          SizedBox(
            height: 15,
          ),
          _getImg("images/photo_hand.png", () {}),
        ],
      ),
    );
  }

  Widget _getImg(String img, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        img,
        width: 240,
        height: 150,
        fit: BoxFit.fill,
      ),
    );
  }
}
