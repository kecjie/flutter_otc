import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ModifyPhonePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ModifyPhonePageState();
  }
}

class _ModifyPhonePageState extends State<ModifyPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "修改手机号"),
      body: _getContent(),
    );
  }

  Widget _getCode(String hintText) {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextFormField(
              decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Color(0xFFB6B6B6)),
                  contentPadding: EdgeInsets.all(15)),
            ),
          ),
          SizedBox(
            height: 20,
            child: VerticalDivider(),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
          ),
          Text("获取验证码"),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getContent() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          getInput("旧手机号", contentPadding: EdgeInsets.all(15)),
          _getCode('验证码'),
          Divider(
            height: 0,
          ),
          getInput("新手机号", contentPadding: EdgeInsets.all(15)),
          _getCode('验证码'),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 26),
              child: getBtn("确定", () {}, btnColor: c_2B3F77)),
        ],
      ),
    );
  }
}
