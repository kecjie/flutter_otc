import 'dart:ui';

import 'package:flutter/material.dart';

///收集一些效果

///使用PopupRoute自定义实现PopupWindow功能
_showPopup(context) {
  Navigator.of(context).push(PageRouteBuilder(
      barrierDismissible: true,
      opaque: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 150),
      pageBuilder: (p1, p2, p3) {
        return Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                ///56是系统默认的appBar等高度
                margin: EdgeInsets.only(
                    top: MediaQueryData.fromWindow(window).padding.top + 56),
                child: TextField()),
          ),
        );
      }));
}


///暂时推荐使用
_showPopup2(context, Widget child) {
  Navigator.of(context).push(PageRouteBuilder(
      barrierDismissible: true,
      opaque: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 150),
      pageBuilder: (p1, p2, p3) {
        return Stack(
          children: <Widget>[
            new Positioned(
              top: MediaQueryData.fromWindow(window).padding.top + 56,
              width: MediaQuery.of(context).size.width,
              child: new Material(
                type: MaterialType.transparency,
                child: child,
              ),
            ),
          ],
        );
      }));
}

/**
 * 利用Overlay实现PopupWindow效果，悬浮的widget
 * 利用CompositedTransformFollower和CompositedTransformTarget
 */

OverlayEntry createSelectPopupWindow() {
  OverlayEntry overlayEntry = new OverlayEntry(builder: (context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.black54,
        ),
        new Positioned(
          top: MediaQueryData.fromWindow(window).padding.top + 56,
          width: MediaQuery.of(context).size.width,
          child: new Material(
            type: MaterialType.transparency,
            child: new Container(
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    new ListTile(title: new Text("选项2"), onTap: () {}),
                  ],
                )),
          ),
        ),
      ],
    );
  });
  return overlayEntry;
}
