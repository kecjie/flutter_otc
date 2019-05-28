import 'package:flutter/material.dart';
import 'package:otc/commom/titleBar.dart';
import 'package:otc/values/color.dart';

import 'btcChargePage.dart';

class WalletPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WalletPageState();
  }
}

class WalletPageState extends State<WalletPage> {
  Widget _getTabBtn(String text, Function onPressed) {
    return Expanded(
      child: Container(
        alignment: Alignment.centerLeft,
        height: 26,
        child: SizedBox(
          width: 80,
          child: OutlineButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
            color: Color(0X12FFFFFF),
            borderSide: BorderSide(color: c_AEB7D4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13))),
          ),
        ),
      ),
    );
  }

  Widget _getItem() {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: c_F0F0F0))),
      child: Container(
        height: 88,
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.airplay),
                  radius: 9,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9),
                ),
                Text(
                  "BTC",
                  style: TextStyle(fontSize: 15, color: c_2B3F77),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 14),
            ),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "总资产",
                      style: TextStyle(fontSize: 12, color: c_CBCBCB),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                    ),
                    Text(
                      "1245",
                      style: TextStyle(fontSize: 13, color: c_1B1B1B),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "可用",
                        style: TextStyle(fontSize: 12, color: c_CBCBCB),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                      ),
                      Text(
                        "12",
                        style: TextStyle(fontSize: 13, color: c_1B1B1B),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "冻结",
                      style: TextStyle(fontSize: 12, color: c_CBCBCB),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                    ),
                    Text(
                      "125dsfsfsfs",
                      style: TextStyle(fontSize: 13, color: c_1B1B1B),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: titleBar(context, '钱包',
          showLeading: false,
          backgroundColor: c_2B3F77,
          titltColor: Colors.white),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15, bottom: 16),
            width: double.infinity,
            color: c_2B3F77,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("总资产折和（BTC）",
                    style: TextStyle(fontSize: 12, color: Colors.white)),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                RichText(
                  text: TextSpan(
                      text: "0.01",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: "=100CNY",
                            style: TextStyle(fontSize: 10, color: Colors.white))
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _getTabBtn("转账", () => {}),
                    _getTabBtn("收款", () => {}),
                    _getTabBtn(
                        "充币",
                        () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BtcChargePage()))
                            }),
                    _getTabBtn("提币", () => {}),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: c_F0F2F5,
            height: 30,
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: null,
                ),
                Text(
                  "隐藏零资产币种",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (contenx, index) {
                return _getItem();
              },
            ),
          )
        ],
      ),
    );
    ;
  }
}
