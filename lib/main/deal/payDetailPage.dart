import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

class PayDetailPage extends StatefulWidget {
  PayDetailPage({Key key}) : super(key: key);

  _PayDetailPageState createState() => _PayDetailPageState();
}

class _PayDetailPageState extends State<PayDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: titleBar(
          context,
          "购买详情",
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 60,
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "待支付",
                    style: TextStyle(color: c_2B3F77, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "请于15分钟内向比特王支付5.09CNY",
                        style: TextStyle(color: c_ACACAC, fontSize: 12),
                      ),
                      Text("订单号：1232367")
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              margin: EdgeInsets.only(left: 15, right: 15, top: 17, bottom: 12),
              padding:
                  EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "您向蒲公英购买5.09USDT",
                    style: TextStyle(color: c_393939, fontSize: 16),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 12,
                  )),
                  Text(
                    "单价5.09USDT",
                    style: TextStyle(color: c_393939, fontSize: 12),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                    top: 8,
                  )),
                  Text(
                    "总价5.09USDT",
                    style: TextStyle(color: c_393939, fontSize: 12),
                  ),
                  SizedBox(
                    height: 45,
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 166,
                                child: Column(
                                  children: <Widget>[
                                    getItem("支付宝"),
                                    getItem("微信"),
                                    getItem("银行卡"),
                                    Container(
                                      height: 4,
                                      color: c_393939,
                                    ),
                                    getItem("取消"),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.list),
                          Expanded(child: Text("支付宝")),
                          Text("切换方式"),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("收款人")),
                        Text("张峰峰"),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("账号")),
                        Text("1245454"),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("收款二维码")),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      getBtn2(height: 40, width: 153, text: "取消"),
                      getBtn2(
                          height: 40,
                          width: 153,
                          text: "标记已付款",
                          textColor: Colors.white,
                          color: c_2B3F77,
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "温馨提示:",
                    style: TextStyle(color: c_484848,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    info,
                    style: TextStyle(color: c_626262),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getItem(String item) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 40,
        decoration:
            BoxDecoration(border: Border(bottom: BorderSide(color: c_F0F0F0))),
        child: Text(item));
  }

  String info = '1、请您在订单支付有效时间内，选择一种支付方式进行支付，同时转账备注信息只能填写“订单号”，' +
      '如果填写其他信息，商家可以选择不予接单，超过订单支付有效时间，系统会将订单自动取消；\n 2、付款完成后，请务必点击“标记已付款”，逾期系统将自动取消本次交易。';
}
