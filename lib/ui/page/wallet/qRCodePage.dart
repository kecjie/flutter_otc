import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/ui/widget/ensureVisibleWhenFocused.dart';
import 'package:otc/values/values.dart';

class QRCodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QRCodePageState();
  }
}

class QRCodePageState extends State<QRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
      appBar: titleBar(context, "二维码"),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 39,
            ),
            Center(
              child: Image.network(
                  "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
            ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(Icons.add),
                Expanded(child: Text("dsfdsfsfsdfsdfsdfsfdsfs")),
                InkWell(
                  child: Text(
                    "复制",
                    style: TextStyle(color: c_2B3F77),
                  ),
                  onTap: () {},
                )
              ],
            ),
            SizedBox(height: 23,),
            Text("备注"),
            SizedBox(height: 5,),
            getInput2(maxLine: 10)
          ],
        ),
      ),
    );
  }
}
