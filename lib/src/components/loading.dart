import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final Color? color;
  final double? strokeWidth;
  Loading({this.color, this.strokeWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 30,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth != null ? strokeWidth! : 1.5,
        valueColor: AlwaysStoppedAnimation(
          color ?? Colors.black,
        ),
      ),
    );
  }
}
