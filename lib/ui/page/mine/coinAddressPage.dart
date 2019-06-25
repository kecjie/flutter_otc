import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

import 'addCoinAddressPage.dart';

class CoinAddressPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CoinAddressState();
  }
}

class _CoinAddressState extends State<CoinAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_F2F2F2,
      appBar: titleBar(context, "提币地址设置", actions: <Widget>[
        InkWell(
            onTap: () {
              openPage(context, AddCoinAddressPage());
            },
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                    child: Text(
                  "添加",
                  style: TextStyle(color: Colors.white),
                )))),
      ]),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return _getItem(index);
        },
      ),
    );
  }

  Widget _getItem(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    child: Text(
                      "BTC",
                      style: TextStyle(fontSize: 15, color: c_1B1B1B),
                    )),
              ],
            ),
            Divider(
              height: 0,
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
              "sfsfafafdfafafafafafsafaf",
              style: TextStyle(color: c_1B1B1B, fontSize: 13),
            )),
            _getItemText('备注：', '货币usdt地址'),
            Padding(
              padding: EdgeInsets.only(bottom: 13),
            )
          ]),
    );
  }

  Widget _getItemText(String title, String content) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyle(color: c_1B1B1B, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
