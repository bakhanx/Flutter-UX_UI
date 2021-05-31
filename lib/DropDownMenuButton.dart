import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './ExpansionList.dart';

class DropDownMenuButton extends StatelessWidget {
  const DropDownMenuButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
      Get.to(() => DropDownList(), transition: Transition.upToDown, opaque: false,
      );
    },
        child : Container(
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.menu_sharp, color:Colors.white),
                    alignment: Alignment.center, padding: EdgeInsets.all(0)),
              ],
            )
        )
    );
  }
}

class DropDownList extends StatelessWidget {
  const DropDownList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child : Stack(
          children: <Widget>[
            Positioned(
              top: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        width:140,
                        height: 50,
                        child: Text(
                          '  박한솔님 환영합니다',
                        ),
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(0),
                      ),
                      Container(
                        color: Colors.white,
                        width:50,
                        height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(icon: Icon(Icons.keyboard_arrow_right, color:Colors.black26),
                                  alignment: Alignment.centerLeft,
                               padding: EdgeInsets.all(0)),
                          ],
                        ),
                      ),
                      Container(
                      color: Colors.white,
                      width:210,
                      height: 50,
                      child:
                      IconButton(icon: Icon(Icons.close, color:Colors.black26),
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(10),
                        onPressed: () {
                         Navigator.pop(context);
                        },
                      ),
                      )
                    ]
                  ),
                  Row(
                    children: [
                      Container(
                        child : Image.asset('img/go_icon.png', width:400),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width:400,
                        height:10,
                        color:Colors.grey[300],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height:1000,
                        width:400,
                        child : ExpansionList(),
                      )
                    ],
                  )
                ]
              ),
            )
          ]
      )
    );
  }
}