import 'dart:ui';

import 'package:flutter/material.dart';

///使用PopupRoute自定义实现PopupWindow功能
showPopup(context, Widget child) {
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
 *
 */

OverlayEntry showPopup2(Widget child, Function onTap) {
  OverlayEntry overlayEntry = new OverlayEntry(builder: (context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            color: Colors.black54,
          ),
        ),
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
  });
  return overlayEntry;
}
