import 'package:flutter/material.dart';
import 'package:otc/bean/tagBean.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/values/values.dart';

///设置币种
class SetMoneyTypePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SetMoneyTypePageState();
  }
}

class _SetMoneyTypePageState extends State<SetMoneyTypePage> with ChangeTag{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: titleBar(context, "设置币种"),
      body: _getContent(),
    );
  }

  List<TagBean> _tagList = List.generate(8, (index) {
    return TagBean("fasd$index", false);
  });

  Widget _getItem(int index) {
    return InkWell(
      onTap: (){
        setState(() {
          changeSelectedTag(_tagList,index);
        });
      },
      child: Container(
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(bottom: BorderSide(color: c_F0F0F0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(_tagList[index].name),
            Icon(_tagList[index].isSelected
                ? Icons.check_circle
                : Icons.radio_button_unchecked,color: c_2B3F77,),
          ],
        ),
      ),
    );
  }

  Widget _getContent() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _getItem(index);
      },
      itemCount: _tagList.length,
    );
  }
}
