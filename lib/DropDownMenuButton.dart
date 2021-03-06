import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './ExpansionList.dart';
import './AppSet.dart';

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
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.white,
                          width:130,
                          height: 50,
                          child: Text(
                            '  박한솔님 환영합니다',
                          ),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(0),
                        ),
                        Container(
                          color: Colors.white,
                          width:108,
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
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=> AppSet()));
                          },
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color:Colors.grey[500]),
                            height:30,
                            width:101,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(0),
                            child: Row(
                              children: [
                                Text("    앱 설정", style: TextStyle(color:Colors.white, fontSize: 15 ),),
                                IconButton(icon:Icon(Icons.settings, color: Colors.white,),
                                  iconSize: 15,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(0),
                                  visualDensity: VisualDensity.compact,
                                ),

                              ],
                            ),
                          ),
                        ),

                        Container(
                        color: Colors.white,
                        width:60,
                        height: 50,
                        child:
                        IconButton(icon: Icon(Icons.close, color:Colors.black26),
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.fromLTRB(0,0,20,0),
                          onPressed: () {
                           Navigator.pop(context);
                          },
                        ),
                        )
                      ]
                    ),
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
                        height:503,
                        width:400,
                        child : ExpansionList(),
                      )
                    ],
                  ),
                ]
              ),
            )
          ]
      )
    );
  }
}