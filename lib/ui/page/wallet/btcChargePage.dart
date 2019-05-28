import 'package:flutter/material.dart';
import 'package:otc/commom/commom_ui.dart';
import 'package:otc/commom/titleBar.dart';
import 'package:otc/values/color.dart';

import 'qRCodePage.dart';

class BtcChargePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BtcChargePageState();
  }
}

class BtcChargePageState extends State<BtcChargePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: titleBar(context,"Btc充值",backgroundColor: c_2B3F77,titltColor: Colors.white),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 19),
        child: Container(
          height: 52,
          decoration: BoxDecoration(
              color: c_F2F4FA,
              border: Border.all(color:c_F2F4FA),
              borderRadius: BorderRadius.all(Radius.circular(6),)),
          child: FlatButton(
            onPressed: ()=>{},
            child: InkWell(
              onTap: () {openPage(context,QRCodePage());},
              child: Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on),
                    Padding(padding: EdgeInsets.only(left:11 ),),
                    Expanded(child: Text("获取地址",style: TextStyle(color: c_2B3F77,fontSize: 15),)),
                    Icon(Icons.arrow_forward_ios,color: c_AEB7D4,)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
