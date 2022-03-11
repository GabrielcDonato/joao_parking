import 'package:flutter/material.dart';

class ParkingContainerWidget extends StatelessWidget {
  const ParkingContainerWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);
  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}
