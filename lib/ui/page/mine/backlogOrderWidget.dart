import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/bean/payAdvertiseBean.dart';
import 'package:otc/ui/dialog/dialog.dart';
import 'package:otc/values/color.dart';

///待办订单
class BackLogOrderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BackLogOrderWidgetState();
  }
}

class _BackLogOrderWidgetState extends State<BackLogOrderWidget>
    with SingleTickerProviderStateMixin {
  List<PayAdvertiseBean> payBeans =
      List.generate(20, (index) => PayAdvertiseBean());

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _getItemText1() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 57,
          child: Text(
            "总价:",
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            "1000 USDT",
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ),
        SizedBox(
          width: 57,
          child: Text(
            "总数量:",
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            "1000 USDT",
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _getItemText2() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 57,
          child: Text(
            "时间:",
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            "2018.12.31 10:56:47",
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _getItem(PayAdvertiseBean payBean, int index) {
    int random = Random().nextInt(2);
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 5),
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 7),
              ),
              Expanded(
                  child: Text(
                "订单编号：12121",
                style: TextStyle(fontSize: 12, color: c_2B3F77),
              )),
              SizedBox(
                width: 40,
                child: FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  onPressed: () => {},
                  child: random == 0
                      ? Text(
                          "已支付",
                          style: TextStyle(fontSize: 12, color: c_51BF3D),
                        )
                      : Text(
                          "待支付",
                          style: TextStyle(fontSize: 12, color: c_D0021B),
                        ),
                ),
              )
            ],
          ),
          Divider(height: 0),
          Padding(
            padding: EdgeInsets.only(top: 6),
          ),
          _getItemText1(),
          Padding(
            padding: EdgeInsets.only(top: 6),
          ),
          _getItemText2(),
          Divider(),
          _getItemText2(),
          _getItemText2(),
          Padding(
            padding: EdgeInsets.only(top: 9),
          ),
        ],
      ),
    );
  }

  //内容
  Widget _getContent() {
    return ListView.builder(
        itemCount: payBeans.length,
        itemBuilder: (context, index) {
          var payBean = payBeans[index];
          return _getItem(payBean, index);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: c_F2F2F2,
      padding: EdgeInsets.only(top: 15),
      child: _getContent(),
    );
  }
}
