import 'package:flutter/material.dart';

/**
 * 利用overlay实现Toast
 */
class Toast {
  static OverlayEntry _overlayEntry;

  static void show(
      {@required BuildContext context,
      @required String message,
      int milliseconds = 1500}) {
    if (_overlayEntry != null) return;
    //创建一个OverlayEntry对象
    _overlayEntry = new OverlayEntry(builder: (context) {
      //外层使用Positioned进行定位，控制在Overlay中的位置
      return new Positioned(
          top: MediaQuery.of(context).size.height * 0.9,
          child: new Material(
            color: Colors.transparent,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: new Card(
                elevation: 8,
                child: new Padding(
                  padding: EdgeInsets.all(8),
                  child: new Text(
                    message,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                color: Colors.black54,
              ),
            ),
          ));
    });
    //往Overlay中插入插入OverlayEntry
    Overlay.of(context).insert(_overlayEntry);
    //两秒后，移除Toast
    new Future.delayed(Duration(milliseconds: milliseconds)).then((value) {
      _overlayEntry.remove();
      _overlayEntry = null;
    });
  }
}
