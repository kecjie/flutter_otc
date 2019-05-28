import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otc/bean/payBean.dart';
import 'package:otc/view/payDialog.dart';
import 'package:otc/values/color.dart';

class PayContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PayContentState();
  }
}

class PayContentState extends State<PayContent> {
  List<PayBean> payBeans = List.generate(
      20,
      (index) => PayBean(
            "${index}dddd",
            "${index}dddd",
            "${index}dddd",
            "${index}dddd",
            "${index}dddd",
            "${index}dddd",
          ));

  Widget _getItem(PayBean payBean, int index) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: c_F0F0F0))),
      child: Container(
        height: 110,
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "比特王",
                          style: TextStyle(
                              color: c_1B1B1B,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text("在线",
                                style:
                                    TextStyle(color: c_ACACAC, fontSize: 12)),
                            Icon(Icons.add),
                            Icon(Icons.search),
                            Icon(Icons.arrow_forward),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9),
                ),
                Text("数量：" + "dfsdfsfsdf",
                    style: TextStyle(color: c_ACACAC, fontSize: 13)),
                Text("限量：" + "丰富的非大毒贩的",
                    style: TextStyle(color: c_ACACAC, fontSize: 13))
              ],
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text("(83|98%)",
                    style: TextStyle(color: c_626262, fontSize: 10)),
                Expanded(
                    child: Center(
                        child: Text(
                  "&DSFFSDFS",
                  style: TextStyle(color: c_2B3F77, fontSize: 18),
                ))),
                Container(
                  height: 24,
                  width: 60,
                  child: FlatButton(
                    color: c_2B3F77,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Text(
                      "购买",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    onPressed: () {
                      Fluttertoast.showToast(msg: "购买${index}");
                      showModalBottomSheet(
                          context: context, builder: (context) {
                            return PayDialog();
                          });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: payBeans.length,
        itemBuilder: (context, index) {
          var payBean = payBeans[index];
          return _getItem(payBean, index);
        });
  }
}
