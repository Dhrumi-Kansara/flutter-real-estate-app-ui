import 'package:flutter/material.dart';
import '../utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double width, height;

  BorderBox(
      {this.padding,
      required this.width,
      required this.height,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kCOLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kCOLOR_GREY.withAlpha(45), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8),
      child: child,
    );
  }
}
