import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'TopNav.dart';

class OfflinePage extends StatefulWidget {
  OfflinePage({Key key}) : super(key: key);
  @override
  _OfflineState createState() => _OfflineState();
}

class _OfflineState extends State<OfflinePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(

            children: [
              Container(
                child: TopNav(),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      child:Text('    카테고리' , style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),),
                    ),
                    Container(
                      child : Image.asset('img/off_cat.png', width:380) ,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    ),
                    Container(
                      child : Image.asset('img/off.jpg'),
                    ),
                  ],
                ),
              )
            ]
        )
    );
  }
}