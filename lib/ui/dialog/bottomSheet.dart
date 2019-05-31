import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/page/mine/editAliPayPage.dart';
import 'package:otc/ui/page/mine/editBankCardPage.dart';
import 'package:otc/values/values.dart';

showBottom(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 166,
          child: Column(
            children: <Widget>[
              getItem("提币"),
              getItem("充值"),
              getItem("划转"),
              Container(
                height: 4,
                color: c_393939,
              ),
              getItem("取消"),
            ],
          ),
        );
      });
}

///请选择收款账户
selectReceiptAccount(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 218,
          child: Column(
            children: <Widget>[
              Container(
                height: 55,
                color: c_F2F4FA,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '请选择收款账户',
                      style: TextStyle(
                          color: c_1B1B1B,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.close)
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    openPage(context, EditBankCardPage());
                  },
                  child: getItem("银行卡", alignment: Alignment.centerLeft)),
              InkWell(onTap: () {
                openPage(context, EditAliPayPage());
              },child: getItem("支付宝", alignment: Alignment.centerLeft)),
              getItem("微信", alignment: Alignment.centerLeft),
              getItem("PayPal", alignment: Alignment.centerLeft),
            ],
          ),
        );
      });
}
