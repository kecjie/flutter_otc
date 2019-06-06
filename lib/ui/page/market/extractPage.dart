import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/dialog/dialog.dart';
import 'package:otc/values/values.dart';

///提币
class ExtractPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExtractPageState();
  }
}

class _ExtractPageState extends State<ExtractPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: titleBar(context, "提币"),
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
                  InkWell(
                      child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(Icons.edit)),
                      onTap: () {}),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              _getItemTitle("数量"),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  _getItemInput(),
                  SizedBox(
                    width: 46,
                    child: InkWell(
                      child: Text(
                        "全部",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: c_4A90E2),
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: <Widget>[
                  Text.rich(TextSpan(
                      text: "可用余额",
                      style: TextStyle(color: c_ACACAC, fontSize: 13),
                      children: <TextSpan>[
                        TextSpan(
                          text: " 23232323 ",
                          style: TextStyle(color: c_2B3F77, fontSize: 13),
                          children: <TextSpan>[
                            TextSpan(
                              text: "USDT",
                              style: TextStyle(color: c_ACACAC, fontSize: 13),
                            ),
                          ],
                        ),
                      ])),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              _getItemTitle("手续费"),
              SizedBox(
                height: 5,
              ),
              _getItemText(),
              SizedBox(
                height: 10,
              ),
              _getItemTitle("到账数量"),
              SizedBox(
                height: 5,
              ),
              _getItemText(),
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
        Expanded(
          child: Text(""),
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    height: 44,
                    color: Colors.white,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "取消",
                        style: TextStyle(color: c_2B3F77, fontSize: 13),
                      ),
                    ))),
            Expanded(
                child: Container(
                    height: 44,
                    color: c_2B3F77,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "确定",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ))),
          ],
        ),
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

  Widget _getItemInput() {
    return Expanded(
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: c_F2F4FA,
          border: Border.all(color: c_F2F4FA),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getItemText() {
    return Container(
      height: 35,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: c_F2F4FA,
        border: Border.all(color: c_F2F4FA),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text("3"),
          ),
          Text(
            "USDT",
            style: TextStyle(color: c_959595),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
          ),
        ],
      ),
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
