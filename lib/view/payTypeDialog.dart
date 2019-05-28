import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/values/values.dart';

import 'package:otc/view/baseTag.dart';

class PayTypeDialog extends StatefulWidget {
  final List<PayTypeTag> list;

  PayTypeDialog({Key key, @required this.list}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TagListState();
  }
}

class _TagListState extends State<PayTypeDialog> with ChangeTag {
  Widget _getTag(int index) {
    return InkWell(
      onTap: () {
        setState(() {
           changeSelectedTag(widget.list, index);
        });
      },
      child: Wrap(
        verticalDirection: VerticalDirection.up,
        spacing: 10, //主轴上子控件的间距
        children: <Widget>[
          Container(
            width: 12,
            height: 12,
            child: Checkbox(
              value: widget.list[index].isSelected,
              onChanged: (bool isChecked) {
                setState(() {});
              },
              activeColor: c_2B3F77,
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
          Text(widget.list[index].name),
        ], 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BaseTagWidget(
        list: widget.list,
        tagCallback: (index) => _getTag(index),
        spacing: 100,
        runSpacing: 30,
      ),
    );
  }
}


