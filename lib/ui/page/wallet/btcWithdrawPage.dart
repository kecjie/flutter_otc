import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/dialog/dialog.dart';
import 'package:otc/values/values.dart';

///btc提现
class BtcWithdrawPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BtcWithdrawPageState();
  }
}

class _BtcWithdrawPageState extends State<BtcWithdrawPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: titleBar(context, "BTC提现"),
      body: _getContent(),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _getContent() {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              _getItemTitle("提币地址"),
              Expanded(child: getInput2(contentPadding: EdgeInsets.all(10))),
              SizedBox(
                width: 46,
                child: InkWell(
                  child: Text(
                    "添加",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: c_2B3F77),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AddWithdrawAddressDialog();
                        });
                  },
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              _getItemTitle("数量"),
              _getItemInput(),
              SizedBox(
                width: 46,
                child: InkWell(
                  child: Text(
                    "全部",
                    textAlign: TextAlign.end,
                    style: TextStyle(color: c_2B3F77),
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
              Padding(
                padding: EdgeInsets.only(left: 67),
              ),
              Text.rich(TextSpan(
                  text: "可用余额",
                  style: TextStyle(color: c_ACACAC, fontSize: 12),
                  children: <TextSpan>[
                    TextSpan(
                      text: "23232323",
                      style: TextStyle(color: c_2B3F77, fontSize: 12),
                    ),
                  ])),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              _getItemTitle("手续费"),
              _getItemInput(),
              SizedBox(
                width: 46,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              _getItemTitle("到账数量"),
              Expanded(child: getInput2(contentPadding: EdgeInsets.all(10))),
              SizedBox(
                width: 46,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _getItemTitle("备注"),
              Expanded(child: getInput2(maxLine: 10, contentPadding: EdgeInsets.all(10))),
              SizedBox(
                width: 46,
              )
            ],
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              getBtn2(),
              Padding(padding: EdgeInsets.only(left: 9),),
              getBtn2(text: "确定", color: c_2B3F77, textColor: Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _getItemTitle(String title) {
    return SizedBox(
        width: 67,
        child: Text(
          title,
          style: TextStyle(color: c_ACACAC, fontSize: 14),
        ));
  }

  Widget _getItemInput() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: c_EDEDED),
          borderRadius: BorderRadius.all(Radius.circular(2)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                ),
              ),
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
      ),
    );
  }
}
