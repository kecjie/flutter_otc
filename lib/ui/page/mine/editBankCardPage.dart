import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/dialog/bottomSheet.dart';
import 'package:otc/values/values.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'nameAuthResultPage.dart';

///编辑银行卡
class EditBankCardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EditBankCardPageState();
  }
}

class _EditBankCardPageState extends State<EditBankCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "编辑银行卡", actions: <Widget>[
        InkWell(
            onTap: () {
//              selectReceiptAccount(context);
            },
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                    child: Text(
                  "完成",
                  style: TextStyle(color: Colors.white),
                )))),
      ]),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _getItem("姓名"),
          _getItem("银行名称"),
          _getItem("卡号"),
          _getItem("开户支行"),
        ],
      ),
    );
  }

  Widget _getItem(String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 15,left: 15),
          child: Text(
            hint,
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        getInput("",contentPadding: EdgeInsets.all(15))
      ],
    );
  }
}
