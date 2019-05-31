import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

class ModifyAdDialog extends Dialog {
  Widget _input(String tag) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 7),
      height: 30,
      child: Row(
        children: <Widget>[
          SizedBox(
              width: 86,
              child: Text(
                tag,
                style: TextStyle(color: c_ACACAC, fontSize: 14),
              )),
          Expanded(child: getInput2())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: new Center(
        //保证控件居中效果
        child: new SizedBox(
          width: 255.0,
          height: 270.0,
          child: new Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("广告修改",
                              style: TextStyle(color: c_2B3F77, fontSize: 14))),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                ),
                _input("单价"),
                _input("数量"),
                _input("单笔最小"),
                _input("单笔最大"),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        getBtn2(
                            width: 105,
                            text: "取消",
                            onPressed: () {
                              closePage(context);
                            }),
                        getBtn2(
                            width: 105,
                            text: "确定",
                            color: c_2B3F77,
                            textColor: Colors.white)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///进度条
class LoadingDialog extends Dialog {
  String text;

  LoadingDialog({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: new Center(
        //保证控件居中效果
        child: new SizedBox(
          width: 120.0,
          height: 120.0,
          child: new Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new CircularProgressIndicator(),
                new Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: new Text(
                    text,
                    style: new TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///添加提币地址
class AddWithdrawAddressDialog extends Dialog {
  Widget _input(
      String tag, Widget input, CrossAxisAlignment crossAxisAlignment) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: <Widget>[
          SizedBox(
              width: 64,
              child: Text(
                tag,
                style: TextStyle(color: c_ACACAC, fontSize: 14),
              )),
          Expanded(child: input)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      //创建透明层
      type: MaterialType.transparency, //透明类型
      child: new Center(
        //保证控件居中效果
        child: new SizedBox(
          width: 330.0,
          height: 334.0,
          child: new Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 40,
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("添加提币地址",
                              style: TextStyle(color: c_2B3F77, fontSize: 14))),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                ),
                SizedBox(
                  height: 15,
                ),
                _input("地址", getInput2(contentPadding: EdgeInsets.all(10)),
                    CrossAxisAlignment.center),
                SizedBox(
                  height: 10,
                ),
                _input("备注", getInput2(contentPadding: EdgeInsets.all(10), maxLine: 6),
                    CrossAxisAlignment.start),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      getBtn2(onPressed: () {
                        closePage(context);
                      }),
                      Padding(
                        padding: EdgeInsets.only(left: 9),
                      ),
                      getBtn2(
                          text: "确定", color: c_2B3F77, textColor: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
