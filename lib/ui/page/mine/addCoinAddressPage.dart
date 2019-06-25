import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/dialog/dialog.dart';
import 'package:otc/values/values.dart';

///添加提币地址
class AddCoinAddressPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddCoinAddressState();
  }
}

class _AddCoinAddressState extends State<AddCoinAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleBar(context, "添加提币地址"),
      body: _getContent(),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _getContent() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getType(),
              SizedBox(
                height: 11,
              ),
              _getItemTitle("提币地址"),
              SizedBox(
                height: 8,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 35,
                          decoration: BoxDecoration(color: c_F2F4FA),
                          child: Text("sfsdfsfsfsfsfsfdsfsfsfs"))),
                  InkWell(
                      child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 5),
                          child: Icon(Icons.scanner)),
                      onTap: () {}),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              _getItemTitle("备注"),
              SizedBox(
                height: 14,
              ),
              _getRemark(),
            ],
          ),
        ),
       SizedBox(height: 35,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
            child: getBtn(
          "确定",
          () {},
          btnColor: c_2B3F77,
        )),
      ],
    );
  }

  Widget _getType() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 35,
      decoration: BoxDecoration(color: c_F2F4FA),
      child: Row(
        children: <Widget>[
          Expanded(child: Text("USDT")),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }

  Widget _getItemTitle(String title) {
    return Text(
      title,
      style:
          TextStyle(color: c_464646, fontSize: 14, fontWeight: FontWeight.bold),
    );
  }

  Widget _getRemark() {
    return Container(
      height: 88,
      decoration: BoxDecoration(
          color: c_F2F4FA, borderRadius: BorderRadius.all(Radius.circular(2))),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10), border: InputBorder.none),
        maxLines: 10,
      ),
    );
  }
}
