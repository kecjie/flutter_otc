import 'package:flutter/material.dart';
import 'package:otc/ui/page/user/login.dart';
import 'package:otc/values/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'otc',
        theme: ThemeData(
          primaryColor: c_2B3F77
        ),
        home: Login());
  }


}
