import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/values/values.dart';

typedef TagCallback = Widget Function(int index);

class TagList extends StatefulWidget {
  final List<TagBean> list;

  final double spacing;
  final double runSpacing;

  final TagCallback tagCallback;

  TagList(
      {Key key,
      @required this.list,
      this.spacing = 7,
      this.runSpacing = 7,
      this.tagCallback})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TagListState();
  }
}

class TagListState extends State<TagList> with ChangeTag {
  @override
  void initState() {
    super.initState();
  }

  changeTag(int index) {
    setState(() {
      changeSelectedTag(widget.list, index);
    });
  }

  List<Widget> _boxs() => List.generate(widget.list.length, (index) {
        return Container(
          child: widget.tagCallback == null
              ? _getTagWidget(widget.list, index, () {
                  changeTag(index);
                })
              : widget.tagCallback(index),
        );
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: widget.spacing, //主轴上子控件的间距
        runSpacing: widget.runSpacing, //交叉轴上子控件之间的间距
        children: _boxs(),
      ),
    );
  }
}

///样式1
Widget _getTagWidget(List<TagBean> list, int index, Function onTap) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      width: 92,
      height: 26,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: c_F2F4FA,
          borderRadius: BorderRadius.circular(2),
          border:
              Border.all(color: list[index].isSelected ? c_2B3F77 : c_F2F4FA)),
      child: Text(
        list[index].name,
        style: TextStyle(fontSize: 13, color: c_2B3F77),
      ),
    ),
  );
}
