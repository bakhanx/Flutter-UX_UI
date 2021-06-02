import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Material(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset('img/bottom.png', width:390),
          ],
        )
    );
  }
}



