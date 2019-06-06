import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/ui/widget/basePopup.dart';
import 'package:otc/ui/widget/tagList.dart';
import 'package:otc/values/values.dart';

/**
 * 利用Overlay实现PopupWindow效果，悬浮的widget
 * 利用CompositedTransformFollower和CompositedTransformTarget
 */
createSelectPopupWindow2(
  List<TagBean> tagList, {
  BuildContext context,
}) {
  return showPopup(context, _getPopup(tagList));
}

Widget _getPopup(
  List<TagBean> tagList,
) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      _getArea("交易类型", tagList),
      SizedBox(
        height: 20,
      ),
    ]),
  );
}

Widget _getArea(String areaName, List<TagBean> tagList) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        areaName,
        style: TextStyle(
            color: c_1B1B1B, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 13,
      ),
      TagList(
        list: tagList,
      ),
    ],
  );
}
