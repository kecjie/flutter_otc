import 'package:flutter/material.dart';
import 'package:otc/commom/commom.dart';
import 'package:otc/commom/titleBar.dart';
import 'package:otc/values/color.dart';

import 'findPwd2.dart';

/**
 * 找回密码
 */
class FindPwd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: titleBar(context, "找回密码"),
      body: Container(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              margin: EdgeInsets.only(left: 22, right: 22, top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  getInput("请输入账户"),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      "重置登录密码后24小时内禁止提币。",
                      style: TextStyle(color: c_2B3F77, fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  getBtn(
                      "提交",
                      () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FindPwd2()))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
