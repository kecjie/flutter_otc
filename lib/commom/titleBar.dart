import 'package:flutter/material.dart';
import 'package:otc/values/values.dart';

/**
 * 返回titlebar
 */
AppBar titleBar(@required BuildContext context, @required String title,
    {Color backgroundColor: c_2B3F77,
    bool showLeading: true,
    Color titltColor: Colors.white}) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    leading: showLeading
        ? IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF9B9B9B)),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        : null,
    automaticallyImplyLeading: showLeading,
    title: Text(title,
        style: TextStyle(
            color: titltColor, fontSize: 17.0, fontWeight: FontWeight.bold)),
    centerTitle: true,
  );
}
