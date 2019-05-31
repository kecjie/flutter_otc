import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

/**
 * 返回titlebar
 */
AppBar titleBar(@required BuildContext context, String title,
    {Color backgroundColor: c_2B3F77,
    Color iconColor: Colors.white,
    bool showLeading: true,
    Color titltColor: Colors.white,List<Widget> actions}) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    leading: showLeading
        ? IconButton(
            icon: Icon(Icons.arrow_back, color: iconColor),
            onPressed: () {
              closePage(context);
            },
          )
        : null,
    automaticallyImplyLeading: showLeading,
    title: Text(title,
        style: TextStyle(
            color: titltColor, fontSize: 17.0, fontWeight: FontWeight.bold)),
    centerTitle: true,
    actions: actions,
  );
}
