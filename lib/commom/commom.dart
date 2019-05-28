import 'package:flutter/material.dart';
import 'package:otc/values/color.dart';

///带下划线的输入框
Widget getInput(String hintText, {bool obscureText = false}) {
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

///带外边框的输入框
Widget getInput2(
    {String hintText = "",
    double height = 30,
    double width,
    Color borderColor = c_EDEDED,
    TextEditingController controller}) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      maxHeight: height,
      maxWidth: width != null ? width : double.infinity,
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(4.0),
        hintText: hintText,
        border: OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: borderColor)),
      ),
    ),
  );
}

///按钮
Widget getBtn(String text, Function press,
    {double width: double.infinity,
    double height: 44,
    Color btnColor = c_D5D7DE,
    Color textColor: Colors.white}) {
  return SizedBox(
    width: double.infinity,
    height: height,
    child: RaisedButton(
      color: btnColor,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(fontSize: 18),
      ),
      textColor: textColor,
      elevation: 0,
    ),
  );
}

///按钮样式2
Widget getBtn2(
    {double borderRadius = 2,
    Color borderColor = c_2B3F77,
    Color color = Colors.white,
    String text = "取消",
    Color textColor = c_2B3F77,
    double fontsize = 14.0,
    double width = 85.0,
    double height = 29.0,
    Function onPressed}) {
  return Container(
    width: width,
    height: height,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor)),
      elevation: 0,
      color: color,
      onPressed: () {
        onPressed();
      },
      child: Text(text, style: TextStyle(color: textColor, fontSize: fontsize)),
    ),
  );
}
