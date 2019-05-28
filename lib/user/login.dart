import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otc/commom/commom.dart';
import 'package:otc/main/mainPage.dart';
import 'package:otc/user/findPwd.dart';
import 'package:otc/user/register.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF9B9B9B)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 25.0, top: 100.0, right: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                          width: 115.0,
                          height: 115.0,
                          child: Image.asset("images/icon.png")),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 64),
                      child: Input(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class Input extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InputState();
  }
}

class InputState extends State<Input> {
  //手机号的控制器
  TextEditingController phoneController = TextEditingController();

  //密码的控制器
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: getInput(
            '请输入手机号或邮箱',
          ),
        ),
        Container(child: getInput('请输入密码', obscureText: true)),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10, bottom: 30),
          child: GestureDetector(
            child: Text("忘记密码？", style: TextStyle(color: Color(0xFF2B3F77))),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FindPwd()));
            },
          ),
        ),
        getBtn(
          '登录',
          _login,
        ),
        Container(
          margin: EdgeInsets.only(top: 17),
          child: GestureDetector(
            child: Text("新用户注册>", style: TextStyle(color: Color(0xFF2B3F77))),
            onTap: () {
              Fluttertoast.showToast(msg: "新用户注册");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
          ),
        ),
      ],
    );
  }

  void _login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainPage()));

    print({'phone': phoneController.text, 'password': passController.text});
    if (phoneController.text.length != 11) {
      Fluttertoast.showToast(msg: '手机号码格式不对');
    } else if (passController.text.length == 0) {
      Fluttertoast.showToast(msg: '请填写密码');
    } else {
      Fluttertoast.showToast(msg: '登录成功');
      phoneController.clear();
    }
  }

  void onTextClear() {
    setState(() {
      phoneController.clear();
      passController.clear();
    });
  }
}
