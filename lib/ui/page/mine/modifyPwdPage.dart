import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ModifyPwdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModifyPwdPageState();
  }
}

class _ModifyPwdPageState extends State<ModifyPwdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(context, "修改密码"),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          getInput("旧密码", contentPadding: EdgeInsets.all(15)),
          getInput("新密码", contentPadding: EdgeInsets.all(15)),
          getInput("确认新密码", contentPadding: EdgeInsets.all(15)),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 26),
              child: getBtn("确定", () {}, btnColor: c_2B3F77)),
        ],
      ),
    );
  }
}
