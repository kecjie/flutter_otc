import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';


typedef TagCallback = Widget Function(int index);

class BaseTagWidget extends StatelessWidget {
  final List<BaseTagBean> list;
  final double spacing;
  final double runSpacing;
  final TagCallback tagCallback;
  final int least;

  BaseTagWidget(
      {Key key,
      @required this.list,
      @required this.tagCallback,
      this.least = 1,
      this.spacing = 7,
      this.runSpacing = 7})
      : super(key: key);

  List<Widget> _boxs() => List.generate(list.length, (index) {
        return Container(
          child: tagCallback(index),
        );
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: spacing, //主轴上子控件的间距
        runSpacing: runSpacing, //交叉轴上子控件之间的间距
        children: _boxs(),
      ),
    );
  }
}


