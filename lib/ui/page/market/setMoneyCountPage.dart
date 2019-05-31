import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

///设置数量
class SetMoneyCountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SetMoneyCountPageState();
  }
}

class _SetMoneyCountPageState extends State<SetMoneyCountPage> with ChangeTag {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "设置数量"),
      body: _getContent(),
    );
  }

  Widget _getContent() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(15),
              hintText: "请输入数量"),
        ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 23, horizontal: 15),
            child: getBtn("确定", () {}, btnColor: c_2B3F77)),
      ],
    );
  }
}
