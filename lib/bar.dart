import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  const MyBar({
    Key? key,
    required this.color,
    required this.child,
    required this.number,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final int number; // out of 10

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          color: color,
          height: 40,
          width: 200,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 35,
                    width: number.toDouble(),
                    color: color,
                  ),
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
