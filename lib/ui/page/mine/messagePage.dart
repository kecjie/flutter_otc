import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'messageDetailPage.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MessageState();
  }
}

class _MessageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(context, "消息"),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return _getItem(index);
          }),
    );
  }

  Widget _getItem(int index) {
    return InkWell(
      onTap: () {
        openPage(context, MessageDetailPage());
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: c_EDEDED))),
        height: 80,
        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Image.asset("images/icon.png"),
              radius: 22.5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "系统公告",
                        style: TextStyle(
                            color: c_1B1B1B,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "2015/5/12 14:25",
                        style: TextStyle(color: c_ACACAC, fontSize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                  ),
                  Text(
                    "放假通知",
                    style: TextStyle(color: c_626262, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
