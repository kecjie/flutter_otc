import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/view/tagList.dart';
import 'package:otc/values/values.dart';

import 'package:otc/view/payTypeDialog.dart';

class PublishAdPage extends StatefulWidget {
  PublishAdPage({Key key}) : super(key: key);

  _PublishAdPageState createState() => _PublishAdPageState();
}

class _PublishAdPageState extends State<PublishAdPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<TagBean> tagList =
      List.generate(8, (index) => TagBean("${index}辅导费", false));
  final List<TagBean> tagList2 =
      List.generate(5, (index) => TagBean("${index}辅导费", false));

  final List<PayTypeTag> tagList3 = [
    PayTypeTag("支付宝", true),
    PayTypeTag("微信", false),
    PayTypeTag("银行卡", false),
    PayTypeTag("PayPal", false)
  ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: titleBar(context, "发布广告",
          backgroundColor: c_2B3F77, titltColor: Colors.white),
      body: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: c_2B3F77,
            unselectedLabelColor: c_86868B,
            indicatorColor: c_2B3F77,
            tabs: <Widget>[Tab(text: "购买"), Tab(text: "卖出")],
          ),
          Container(
            color: c_F0F0F0,
            height: 3,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                _getContent(),
                _getContent(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getContent() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 23, bottom: 12),
        child: Column(
          children: <Widget>[
            _getTagList("交易货币", tagList),
            Padding(
              padding: EdgeInsets.only(top: 14),
            ),
            _getTagList("结算法币", tagList2),
            Padding(
              padding: EdgeInsets.only(top: 14),
            ),
            _getInput("指定单价", true, hint: "最新价", controller: controller),
            Padding(
              padding: EdgeInsets.only(top: 9),
            ),
            _getInput("交易数量", true, hint: "账户余额"),
            Padding(
              padding: EdgeInsets.only(top: 9),
            ),
            _getInput(
              "单笔最小交易额",
              false,
            ),
            Padding(
              padding: EdgeInsets.only(top: 23),
            ),
            _getInput(
              "单笔最大交易额",
              false,
            ),
            Padding(
              padding: EdgeInsets.only(top: 18),
            ),
            _getPayType("支付方式"),
            Padding(
              padding: EdgeInsets.only(top: 18),
            ),
            _getIntro("交易说明"),
            Padding(
              padding: EdgeInsets.only(top: 28),
            ),
            _getBtn()
          ],
        ),
      ),
    );
  }

  Widget _getBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: BorderSide(color: c_2B3F77)),
          elevation: 0,
          color: Colors.white,
          onPressed: () {
            Fluttertoast.showToast(msg: "取消");
          },
          child: Container(
              alignment: Alignment.center,
              width: 85,
              height: 29,
              child: Text("取消")),
        ),
        Padding(
          padding: EdgeInsets.only(left: 9),
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: BorderSide(color: c_2B3F77)),
          elevation: 0,
          color: c_2B3F77,
          onPressed: () {
            Fluttertoast.showToast(msg: "确定");
          },
          child: Container(
              alignment: Alignment.center,
              width: 85,
              height: 29,
              child: Text(
                "确定",
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }

  String _getInfo() {
    return "1. 订单有效期为15分钟，请您及时在有效期内付款并点击「标记付款已完成」按钮，我才可以释放数字币给您；\n " +
        "2. 开始交易后数字币由系统锁定托管，请安心下单。";
  }

  Widget _getIntro(String areaName) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
            width: 112,
            child: Text(areaName,
                style: TextStyle(color: c_ACACAC, fontSize: 15))),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(6),
            width: 234,
            height: 157,
            decoration: BoxDecoration(border: Border.all(color: c_ACACAC)),
            child: Text(_getInfo()),
          ),
        )
      ],
    );
  }

  Widget _getPayType(String areaName) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
            width: 112,
            child: Text(areaName,
                style: TextStyle(color: c_ACACAC, fontSize: 15))),
        Expanded(
            child: PayTypeDialog(
          list: tagList3,
        ))
      ],
    );
  }

  Widget _getTagList(String areaName, List<TagBean> tagList) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
            width: 112,
            child: Text(areaName,
                style: TextStyle(color: c_ACACAC, fontSize: 15))),
        Expanded(
          child: TagList(
            list: tagList,
//            tagCallback: (index) {
//              return _getTagWidget(tagList, index);
//            },
          ),
        )
      ],
    );
  }

  TextEditingController controller = TextEditingController();

  Widget _getInput(String areaName, bool isShowHint,
      {String hint, TextEditingController controller}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
            width: 112,
            child: Text(areaName,
                style: TextStyle(color: c_ACACAC, fontSize: 15))),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              getInput2(controller: controller),
              isShowHint
                  ? Text.rich(TextSpan(
                      text: hint,
                      style: TextStyle(color: c_ACACAC, fontSize: 15),
                      children: <TextSpan>[
                          TextSpan(
                              text: "6.98CNY",
                              style: TextStyle(color: c_2B3F77))
                        ]))
                  : Container()
            ],
          ),
        )
      ],
    );
  }
}
