import 'package:flutter/material.dart';
import 'package:otc/commom/titleBar.dart';
import 'package:otc/user/phoneRegister.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:otc/values/color.dart';

import 'emailRegister.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: titleBar(context, "用户注册"),
      body: ScopedModel<SelectedModel>(
        model: SelectedModel(),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[
                  ScopedModelDescendant<SelectedModel>(
                    builder: (context, child, model) => _TextLine(
                          title: "手机号注册",
                          pos: 0,
                          selected: model.pos == 0,
                        ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 40),),
                  ScopedModelDescendant<SelectedModel>(
                    builder: (context, child, model) => _TextLine(
                          title: "邮箱注册",
                          pos: 1,
                          selected: model.pos == 1,
                        ),
                  ),
                ]),
                ScopedModelDescendant<SelectedModel>(
                  builder: (context, child, model) {
                    if (model.pos == 0) {
                      return PhoneRegister(model._area);
                    } else {
                      return EmailRegister(model._area);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TextLine extends StatelessWidget {
  bool selected = true;
  int pos = 0;
  final String title;

  _TextLine({this.selected, this.pos, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 6),
          margin: EdgeInsets.only(left: 28, top: 35),
          decoration: selected
              ? BoxDecoration(
                  border: Border(bottom: BorderSide(color: c_2B3F77)))
              : null,
          child: InkWell(
            onTap: () {
              final selectedModel = ScopedModel.of<SelectedModel>(context);
              selectedModel.change(pos);
            },
            child: Text(
              title,
              style: TextStyle(
                  color: selected ? c_2B3F77 : c_030303,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectedModel extends Model {
  int _pos = 0;
  String _area = "中国";

  set pos(int selected) => _pos = pos;

  int get pos => _pos;

  change(int pos) {
    _pos = pos;
    notifyListeners();
  }

  valueChange(String value) {
    _area = value;
    notifyListeners();
  }
}
