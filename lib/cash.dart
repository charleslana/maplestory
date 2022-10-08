import 'package:flutter/material.dart';

class MyCash extends StatelessWidget {
  const MyCash({
    Key? key,
    required this.cashSpriteStep,
  }) : super(key: key);

  final int cashSpriteStep;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/cash${cashSpriteStep % 4 + 1}.png',
      fit: BoxFit.fill,
    );
  }
}
