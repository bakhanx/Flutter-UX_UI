import 'package:flutter/material.dart';
import 'BottomNav.dart';
import 'TopNav.dart';

class OnlinePage extends StatefulWidget {
  OnlinePage({Key key}) : super(key: key);
  @override
  _OnlineState createState() => _OnlineState();
}

class _OnlineState extends State<OnlinePage> {

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
                    padding: EdgeInsets.all(0),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        child : Image.asset('img/on_cat.jpg', width:380) ,
                        margin: EdgeInsets.all(0),
                      ),
                      Container(
                        child : Image.asset('img/on.jpg'),
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