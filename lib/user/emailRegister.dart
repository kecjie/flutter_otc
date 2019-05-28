import 'package:flutter/material.dart';
import 'package:otc/commom/commom.dart';
import 'package:otc/values/color.dart';

class EmailRegister extends StatelessWidget {

  String _area = "中国";

  EmailRegister(this._area);

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
  Widget _getInput(String hintText, {bool obscureText = false}) {
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: new InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xFFB6B6B6)),
          ),
          obscureText: obscureText,
        ),
        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          _getInput('请输入邮箱地址'),
          _getInput('请输入登录密码', obscureText: true),
          _getInput('确认登录密码', obscureText: true),
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
          _getInput(
            '请输入邀请码（选填）',
          ),
          Row(
            children: <Widget>[
              Container(
                child: Checkbox(
                    value: true,
                    onChanged: (isSelected) {},
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
              ),
              Text("我已阅读"),
              Text(
                "《用户注册使用协议》",
                style: TextStyle(color: Color(0xFF357CE1)),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 36,bottom: 20),
            child: getBtn("注册",()=>{}),
          ),
        ],
      ),
    );
  }
}
