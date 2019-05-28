import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/values/values.dart';

class DealDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DealDrawerState();
  }
}

class DealDrawerState extends State<DealDrawer> {
  final List<TagBean> tagList =
      List.generate(8, (index) => TagBean("${index}辅导费", false));
  final List<TagBean> tagList2 =
      List.generate(5, (index) => TagBean("${index}辅导费", false));
  final List<TagBean> tagList3 =
      List.generate(4, (index) => TagBean("${index}辅导费", false));
  final List<TagBean> tagList4 =
      List.generate(5, (index) => TagBean("${index}辅导费", false));

  _changeSelected(List<TagBean> list, int index) {
    setState(() {
      list.forEach((item) {
        item.isSelected = false;
      });
      list[index].isSelected = true;
    });
  }

  List<Widget> Boxs(List<TagBean> list) => List.generate(list.length, (index) {
        return Container(
          width: 92,
          height: 26,
          color: c_F2F4FA,
          child: OutlineButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2))),
            onPressed: () {
              _changeSelected(list, index);
            },
            borderSide:
                BorderSide(color: list[index].isSelected ? c_2B3F77 : c_F2F4FA),
            child: Text(
              list[index].name,
              style: TextStyle(fontSize: 13, color: c_2B3F77),
            ),
          ),
        );
      });

  Widget _getArea(String areaName, List<TagBean> list) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(areaName, style: TextStyle(color: c_1B1B1B, fontSize: 14)),
          Padding(
            padding: EdgeInsets.only(top: 13),
          ),
          Wrap(
            spacing: 7, //主轴上子控件的间距
            runSpacing: 7, //交叉轴上子控件之间的间距
            children: Boxs(list),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _getArea("选择币种", tagList),
          Padding(
            padding: EdgeInsets.only(top: 35),
          ),
          _getArea("法币币种", tagList2),
          Padding(
            padding: EdgeInsets.only(top: 35),
          ),
          _getArea("金额", tagList3),
          Padding(
            padding: EdgeInsets.only(top: 35),
          ),
          Expanded(child: _getArea("支付方式", tagList4)),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                    height: 40,
                    color: Colors.white,
                      child: FlatButton(
                onPressed: () {},
                child: Text("重置",style: TextStyle(color: c_ACACAC,fontSize: 13),),
              ))),
              Expanded(
                  child: Container(
                    height: 40,
                    color: c_2B3F77,
                      child: FlatButton(
                onPressed: () {},
                child: Text("筛选",style: TextStyle(color: Colors.white,fontSize: 13),),
              ))),
            ],
          )
        ],
      ),
    );
  }
}

