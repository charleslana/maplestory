import 'dart:math';

import 'package:flutter/material.dart';

class MyTeddy extends StatelessWidget {
  const MyTeddy({
    Key? key,
    required this.teddySpriteCount,
    required this.teddyDirection,
  }) : super(key: key);

  final int teddySpriteCount;
  final String teddyDirection;

  @override
  Widget build(BuildContext context) {
    if (teddyDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        width: 50,
        height: 50,
        child:
            Image.asset('assets/images/teddysprite/teddy$teddySpriteCount.png'),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: 50,
          height: 50,
          child: Image.asset(
              'assets/images/teddysprite/teddy$teddySpriteCount.png'),
        ),
      );
    }
  }
}
