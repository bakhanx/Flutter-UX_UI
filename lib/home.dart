import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:msmart_app/Online.dart';
import 'package:msmart_app/TopNav.dart';
import 'DropDownMenuButton.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
          children : [
            Container(
            child:TopNav(),
            ),

            Container(
              child:Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children:<Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image.asset('img/2.jpg'),
                    ),

                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                      child : Image.asset('img/1.jpg'),
                    ),
                    Image.asset('img/4.jpg'),
                  ]
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,

            children: [
              Image.asset('img/bottom.png', width:390),
            ],
          )
          ],
        )
    );
  }
}

