import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessageDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MessageDetailState();
  }
}

class _MessageDetailState extends State<MessageDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(context, "消息",
          backgroundColor: Colors.white,
          iconColor: c_9B9B9B,
          titltColor: c_030303),
      body: _getContent2(),
    );
  }

  Widget _getContent() {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: c_EDEDED))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "您发布的订单号为123456的订单已被接单，交易单号：123457，请及时查看，完成交易。",
            style: TextStyle(color: c_626262, fontSize: 14),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "2019/5/22 14:36:48",
            style: TextStyle(color: c_ACACAC, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _getContent2() {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: c_EDEDED))),
      child: Column(
        children: <Widget>[
          Text(
            "关于端午放假通知",
            style: TextStyle(
                color: c_1B1B1B, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "现将端午期间放假安排通知如下:\n        端午假期自6月7日-6月9日放假，共3天。6月10为正常上班日。",
            style: TextStyle(
                color: c_ACACAC, fontSize: 14, height: 1.3),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: Text(
              "润投有限公司",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: c_ACACAC, fontSize: 14, wordSpacing: 25, height: 1.3),
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              "2019/5/22 14:36:49",
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: c_ACACAC, fontSize: 14, height: 1.3),
            ),
          ),
        ],
      ),
    );
  }
}
