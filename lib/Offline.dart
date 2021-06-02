import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'BottomNav.dart';
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
                  padding:EdgeInsets.all(0),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      child : Image.asset('img/off_cat.jpg', width:380) ,
                      margin: EdgeInsets.all(0),
                    ),
                    Container(
                      child : Image.asset('img/off.jpg'),
                    ),
                  ],
                ),
              ),
              Container(
                child: BottomNav(),
              ),
            ]
        )
    );
  }
}