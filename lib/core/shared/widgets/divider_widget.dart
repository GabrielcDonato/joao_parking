import 'package:flutter/material.dart';

class DividirWidget extends StatelessWidget {
  const DividirWidget({
    Key? key,
    required this.color,
    required this.thickness,
    this.height,
  }) : super(key: key);
  final Color color;
  final double thickness;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: thickness,
      height: height,
    );
  }
}
