import 'package:flutter/material.dart';
import 'package:otc/commom/commom.dart';
import 'package:otc/values/color.dart';

class FindPwdByEmail extends StatelessWidget {

  String _area = "中国";

  FindPwdByEmail(this._area);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 30, left: 28, right: 28),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                _area,
                style: TextStyle(color: c_2B3F77, fontSize: 15),
              ),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () => {},
              )
            ],
          ),
          _Input()
        ],
      ),
    );
  }
}

class _Input extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          getInput('请输入邮箱地址'),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: '请输入验证码',
                    hintStyle: TextStyle(color: Color(0xFFB6B6B6)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: VerticalDivider(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
              ),
              Text("获取验证码")
            ],
          ),
          Divider(),
          getInput('请输入新密码', obscureText: true),
          getInput('确认新密码', obscureText: true),
          Container(
            margin: EdgeInsets.only(top: 36,bottom: 20),
            child: getBtn("注册",()=>{}),
          ),
        ],
      ),
    );
  }
}
