import 'dart:io';

import 'package:flutter/material.dart';

///打开页面
Future<T> openPage<T extends Object>(BuildContext context, Widget widget) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => widget));
}

///关闭页面
bool closePage<T extends Object>(BuildContext context, [T result]) {
  var pop = Navigator.pop(context);
  if(!pop) {
    exit(0);
  }
  return pop;
}
