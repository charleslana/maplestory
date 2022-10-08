import 'dart:math';

import 'package:flutter/material.dart';

class MyBoy extends StatelessWidget {
  const MyBoy({
    Key? key,
    required this.boySpriteCount,
    required this.boyDirection,
    required this.attackBoySpriteCount,
    required this.underAttack,
    required this.currentlyLeveling,
    required this.smile,
  }) : super(key: key);

  final int boySpriteCount;
  final String boyDirection;
  final int attackBoySpriteCount;
  final bool underAttack;
  final bool currentlyLeveling;
  final bool smile;

  @override
  Widget build(BuildContext context) {
    int directionAsInt = 1;

    if (boyDirection == 'right') {
      directionAsInt = 1;
    } else if (boyDirection == 'left') {
      directionAsInt = 0;
    } else {
      directionAsInt = 1;
    }

    if (smile == true) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi * directionAsInt),
        child: Image.asset(
          'assets/images/boy2.png',
        ),
      );
    } else if (attackBoySpriteCount == 0) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi * directionAsInt),
        child: Image.asset(
          'assets/images/standboy${boySpriteCount % 2 + 1}.png',
          color: underAttack
              ? Colors.red
              : (currentlyLeveling ? Colors.yellow[200] : null),
        ),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi * directionAsInt),
        child: Image.asset(
          'assets/images/attackboy$attackBoySpriteCount.png',
        ),
      );
    }
  }
}
