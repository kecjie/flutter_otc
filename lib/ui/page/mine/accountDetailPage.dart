import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/page/mine/orderFilterPopup3.dart';
import 'package:otc/values/values.dart';

class AccountDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AccountDetailState();
  }
}

class AccountDetailState extends State<AccountDetailPage> {

  final List<TagBean> tagList =
  List.generate(6, (index) => TagBean("${index}辅导费", false));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: c_F2F2F2,
      appBar: titleBar(
        context,
        "财务明细",
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              createSelectPopupWindow3(tagList,context:context);
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return _getItem(index);
          }),
    );
  }

  Widget _getItem(int index) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
      ),
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.camera),
            Padding(padding: EdgeInsets.only(left:5),),
            Expanded(
              child: Text(
                "BTC",
                style: TextStyle(fontSize: 15, color: c_1B1B1B),
              ),
            ),
            SizedBox(
              width: 40,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.all(0),
                onPressed: () => {},
                child: Text(
                  "购买",
                  style: TextStyle(fontSize: 12, color: c_2B3F77),
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: 0,
        ),
        SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _getItemText("数量：", "10000USDSF"),
            Container(
                alignment: Alignment.centerLeft,
                child: _getItemText("手续费：", "100")),
            Padding(padding: EdgeInsets.only(right: 10),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _getItemText('时间：', "1324234234234234"),
            Icon(Icons.chevron_right),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 13),
        )
      ]),
    );
  }

  Widget _getItemText(String title, String content) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
          Text(
            content,
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
