

import 'package:flutter/material.dart';

class CenterProgress extends StatelessWidget {
  const CenterProgress(
      {super.key,
      
      required this.progressValue,
      required this.iconData,
      this.color,
      this.iconColor,
      this.size = 200,
      this.strokeWidth = 4.0});

  final double progressValue;
  final IconData iconData;
  final Color? color;
  final Color? iconColor;
  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: size,
            width: size,
            child: CircularProgressIndicator(
              strokeWidth: strokeWidth,
              backgroundColor:  Color.fromRGBO(203, 94, 147, 1),
              color: color,
              value: progressValue,
            ),
          ),
          Icon(iconData, size: 45, color: iconColor),
        ],
      ),
    );
  }
}
