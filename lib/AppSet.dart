import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

import 'BottomNav.dart';



class AppSet extends StatelessWidget {

  final _controller1 = AdvancedSwitchController(true);
  final _controller2 = AdvancedSwitchController(true);
  final _controller3 = AdvancedSwitchController(false);
  final _controller4 = AdvancedSwitchController(true);
  final _controller5 = AdvancedSwitchController(false);
  final _controller6 = AdvancedSwitchController(true);
  final _controller7 = AdvancedSwitchController(true);

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 80,
                color: Color.fromRGBO(225, 110, 55, 1),
                child:Row(
                  children : [
                    IconButton(icon:Icon(Icons.settings, color: Colors.white, size:35),),
                    Text(" 앱 설정",  style: TextStyle(fontSize: 30, color: Colors.white, height:1.2)),
                    IconButton(icon: Icon(Icons.close, color:Colors.white, size:30),
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.fromLTRB(205,0,0,0),
                      onPressed: () {
                      Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    메시지 알림", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(250,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller1,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    소리", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(298,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller2,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    진동", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(298,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller3,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    팝업 알림", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(265,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller4,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    타임 돼지 효과", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(231,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller5,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    최근 내역 기록", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(231,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller6,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    마케팅정보 수신동의", style: TextStyle(fontSize: 16,) ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(190,0,0,0),
                      child: AdvancedSwitch(
                        controller: _controller7,
                        activeColor : Color.fromRGBO(225, 110, 55, 1),
                        width:32,
                        height:16,

                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    기타", style: TextStyle(fontSize: 16,) ),
                  ],
                ),
              ),
              Container(
                height: 174.5,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text("    ", style: TextStyle(fontSize: 16,) ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: BottomNav(),
          )
        ],
      ),

    );
  }
}