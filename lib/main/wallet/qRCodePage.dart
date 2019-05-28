import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';

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
      appBar: titleBar(context, "二维码"),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 39,
            ),
            Image.network(
                "https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3463668003,3398677327&fm=58"),
            ListTile(
                leading: Icon(Icons.add),
                contentPadding:EdgeInsets.only(left: 0,right: 0),
                title: Text("dsfdsfsfsdfsdfsdfsfdsfs"),
                trailing: FlatButton(onPressed: () {}, child: Text("复制")))
          ],
        ),
      ),
    );
  }
}
