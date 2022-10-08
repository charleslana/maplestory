import 'package:flutter/material.dart';

class MyStar extends StatelessWidget {
  const MyStar({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/star$number.png');
  }
}
