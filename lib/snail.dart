import 'dart:math';

import 'package:flutter/material.dart';

class BlueSnail extends StatelessWidget {
  const BlueSnail({
    Key? key,
    required this.snailSpriteCount,
    required this.snailDirection,
    required this.deadSnailSprite,
  }) : super(key: key);

  final int snailSpriteCount;
  final String snailDirection;
  final int deadSnailSprite;

  @override
  Widget build(BuildContext context) {
    int directionInt;
    if (snailDirection == 'left') {
      directionInt = 0; // means we don't need to turn direction
    } else {
      directionInt = 1; // means we need to turn pi radians.
    }

    if (deadSnailSprite == 0) {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi * directionInt),
        child: Container(
          alignment: const Alignment(0, 1),
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/snailsprite/snail${snailSpriteCount % 4 + 1}.png',
          ),
        ),
      );
    } else {
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi * directionInt),
        child: Container(
          alignment: const Alignment(0, 1),
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/snailsprite/snaildie$deadSnailSprite.png',
          ),
        ),
      );
    }
  }
}
