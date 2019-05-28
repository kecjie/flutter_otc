import 'dart:math';

import 'package:flutter/material.dart';
import 'package:otc/values/color.dart';

/**
 * 首页内容
 */
class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeContentState();
  }
}

class HomeContentState extends State<HomeContent> {
  List<Coin> coinInfos = List.generate(
      20, (index) => Coin("${index}dddd", "${index}ssdsad", "${index}sdfsdfds"));

  Widget _getItem(String type, String price, String change, {bool isUp: true}) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          height: 40,
          child: Row(
            children: <Widget>[
              Text(
                type,
                style: TextStyle(color: c_404040, fontSize: 14),
              ),
              Expanded(
                  child: Center(
                child: Text(price,
                    style: TextStyle(color: c_2B3F77, fontSize: 14)),
              )),
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: isUp ? c_FDEFEF : c_E9F8E7),
                  child: Text(change,
                      style: TextStyle(
                          color: isUp ? c_D03630 : c_00FF00, fontSize: 14))),
            ],
          ),
        ),
        Divider()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          height: 38,
          child: Row(
            children: <Widget>[
              Text(
                "币种",
                style: TextStyle(color: c_ACACAC, fontSize: 13),
              ),
              Expanded(
                  child: Center(
                child: Text("最低价（USD）",
                    style: TextStyle(color: c_ACACAC, fontSize: 13)),
              )),
              Text("涨跌幅", style: TextStyle(color: c_ACACAC, fontSize: 13)),
            ],
          ),
        ),
        Divider(),
        Expanded(
          child: ListView.builder(
              itemCount: coinInfos.length,
              itemBuilder: (context, index) {
                var coinInfo = coinInfos[index];
                return _getItem(coinInfo.type, coinInfo.price, coinInfo.change,
                    isUp: Random().nextInt(2) == 0 ? true : false);
              }),
        )
      ],
    );
  }
}

class Coin {
  String type;
  String price;
  String change;

  Coin(this.type, this.price, this.change);
}
