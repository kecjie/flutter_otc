import 'package:flutter/material.dart';
import 'package:otc/bean/payAdvertiseBean.dart';
import 'package:otc/view/dialog.dart';
import 'package:otc/values/color.dart';

class PayAdvertise extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PayAdvertiseState();
  }
}

class _PayAdvertiseState extends State<PayAdvertise>
    with SingleTickerProviderStateMixin {
  List<PayAdvertiseBean> payBeans =
      List.generate(20, (index) => PayAdvertiseBean());

  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 8);
  }

  Widget _getItemText1() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 57,
          child: Text(
            "总数量:",
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            "1000 USDT",
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ),
        SizedBox(
          width: 57,
          child: Text(
            "总数量:",
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            "1000 USDT",
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _getItemText2() {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 57,
          child: Text(
            "时间:",
            style: TextStyle(color: c_ACACAC, fontSize: 14),
          ),
        ),
        Expanded(
          child: Text(
            "2018.12.31 10:56:47",
            style: TextStyle(color: c_1B1B1B, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _getBtn(String text, Function onTap) {
    return Expanded(
      child: Container(
          height: 34,
          child: InkWell(
            onTap: () => {onTap()},
            child: Center(
                child: Text(
              text,
              style: TextStyle(fontSize: 14, color: c_2B3F77),
            )),
          )),
    );
  }

  Widget _getItem(PayAdvertiseBean payBean, int index) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, top: 5),
      padding: EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 7),
              ),
              Expanded(
                  child: Text(
                "广告编号：12121",
                style: TextStyle(fontSize: 12, color: c_2B3F77),
              )),
              SizedBox(
                width: 40,
                child: FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.all(0),
                  onPressed: () => {},
                  child: Text(
                    "购买",
                    style: TextStyle(fontSize: 12, color: c_51BF3D),
                  ),
                ),
              )
            ],
          ),
          Divider(height: 0),
          Padding(
            padding: EdgeInsets.only(top: 6),
          ),
          _getItemText1(),
          Padding(
            padding: EdgeInsets.only(top: 6),
          ),
          _getItemText1(),
          Padding(
            padding: EdgeInsets.only(top: 6),
          ),
          _getItemText2(),
          Divider(height: 6),
          Row(
            children: <Widget>[
              _getBtn("撤销", () => {}),
              SizedBox(
                height: 10,
                child: VerticalDivider(color: c_2B3F77),
              ),
              _getBtn(
                  "修改",
                  () => {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return ModifyAdDialog();
                            })
                      }),
            ],
          )
        ],
      ),
    );
  }

  Widget _getTabBar() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      color: Colors.white,
      child: TabBar(
        isScrollable: true,
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: c_2B3F77,
        unselectedLabelColor: c_86868B,
        indicatorColor: c_2B3F77,
        tabs: <Widget>[
          Tab(
            text: "USDT",
          ),
          Tab(
            text: "BTC",
          ),
          Tab(
            text: "ETH",
          ),
          Tab(
            text: "BCH",
          ),
          Tab(
            text: "DASH",
          ),
          Tab(
            text: "LTC",
          ),
          Tab(
            text: "EOS",
          ),
          Tab(
            text: "AOT",
          ),
        ],
      ),
    );
  }

  Widget _getListView() {
    return ListView.builder(
        itemCount: payBeans.length,
        itemBuilder: (context, index) {
          var payBean = payBeans[index];
          return _getItem(payBean, index);
        });
  }

  //内容
  Widget _getContent() {
    return TabBarView(
      controller: _tabController,
      children: <Widget>[
        _getListView(),
        Center(child: new Text('船')),
        Center(child: new Text('sdfsf')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
        Center(child: new Text('sada')),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: c_F2F2F2,
      child: Column(
        children: <Widget>[
          _getTabBar(),
          Expanded(child: _getContent()),
        ],
      ),
    );
  }
}
