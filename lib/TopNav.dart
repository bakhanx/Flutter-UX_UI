import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DropDownMenuButton.dart';
import 'package:msmart_app/Online.dart';

import 'Offline.dart';
import 'home.dart';

class TopNav extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Material(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                flex: 1,
                child: Container(
                  height: 30,
                  color: Color.fromRGBO(225, 110, 55, 1),
                ))
          ],
        ),
        Row(children: <Widget>[
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=> Home()), (route)=> false);
              },
              child: Container(
                color: Color.fromRGBO(225, 110, 55, 1),
                height: 50,
                child: Image.asset('img/3.jpg'),
                padding: EdgeInsets.all(0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Color.fromRGBO(225, 110, 55, 1),
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "  통합검색",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_drop_down_sharp,
                            color: Colors.orange),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(0)),
                    IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0)),
                  ],
                ),
              ),
              padding: EdgeInsets.all(8),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromRGBO(225, 110, 55, 1),
              height: 50,
              width: 20,
              child: IconButton(
                icon: Icon(Icons.mic, color: Colors.white),
                alignment: Alignment.center,
                padding: EdgeInsets.all(0),
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("원하는 검색어를 말하세요."),
                          content: SingleChildScrollView(
                              child: ListBody(children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.mic),
                              iconSize: 100,
                            ),
                            Text("음성 인식중...", textAlign: TextAlign.center),
                          ])),
                        );
                      });
                },
              ),
              padding: EdgeInsets.all(10),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              color: Color.fromRGBO(225, 110, 55, 1),
              height: 50,
              child: DropDownMenuButton(),
            ),
          ),
        ]),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap : () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> OnlinePage()));
                  },
                child: Container(
                  color: Color.fromRGBO(225, 110, 55, 1),
                  height: 50,
                  child: Text("온라인특가",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap : () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> OfflinePage()));
                },
                child: Container(
                  color: Color.fromRGBO(225, 110, 55, 1),
                  height: 50,
                  child: Text("오프라인특가",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                  padding: EdgeInsets.all(10),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromRGBO(225, 110, 55, 1),
                height: 50,
                child: Text("ms투데이",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
                padding: EdgeInsets.all(10),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromRGBO(225, 110, 55, 1),
                height: 50,
                child: Text("커뮤니티",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
                padding: EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
