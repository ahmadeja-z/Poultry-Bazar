
import 'package:flutter/material.dart';

class PositionedIcon extends StatelessWidget {
  final String icon;
  final double? top;
  final double? left;
  final double? right;
  final double size;

  const PositionedIcon({
    Key? key,
    required this.icon,
    this.top,
    this.left,
    this.right,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      child: Image.asset(
        icon,
        height: size,
        width: size,
      ),
    );
  }}