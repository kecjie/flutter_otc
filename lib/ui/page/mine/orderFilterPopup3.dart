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
createSelectPopupWindow3(
  List<TagBean> tagList, {
  BuildContext context,
}) {
  showPopup(context, _getPopup(tagList));
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
      _getTime("日期"),
      SizedBox(
        height: 15,
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

Widget _getTime(String areaName) {
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
      Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            height: 26,
            width: 114,
            decoration: BoxDecoration(
                color: c_F2F4FA,
                borderRadius: BorderRadius.all(Radius.circular(2))),
            child: Row(
              children: <Widget>[
                Text("2019-3-12",
                    style: TextStyle(color: c_2B3F77, fontSize: 12)),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Icon(
                  Icons.calendar_today,
                  size: 14,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              color: c_2B3F77,
              height: 1,
              width: 12,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            height: 26,
            width: 114,
            decoration: BoxDecoration(
                color: c_F2F4FA,
                borderRadius: BorderRadius.all(Radius.circular(2))),
            child: Row(
              children: <Widget>[
                Text("2019-3-12",
                    style: TextStyle(color: c_2B3F77, fontSize: 12)),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Icon(
                  Icons.calendar_today,
                  size: 14,
                )
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
