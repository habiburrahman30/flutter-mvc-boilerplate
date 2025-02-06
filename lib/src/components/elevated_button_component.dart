import 'package:flutter/material.dart';

import '../helpers/hex_color.dart';

class ElevatedButtonComponent extends StatelessWidget {
  final Widget child;

  final Color? backgroundColor;
  final double? height;
  final double? width;
  final bool gradient;
  final double paddingHorizontal;
  final double paddingVertical;
  final bool isMargin;
  final Size? size;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final void Function()? onPressed;
  const ElevatedButtonComponent({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.gradient = false,
    this.paddingHorizontal = 25.0,
    this.paddingVertical = 0.0,
    this.isMargin = true,
    this.height = 45.5,
    this.width,
    this.size,
    this.borderRadius = 50,
    this.borderWidth = 0,
    this.borderColor = Colors.transparent,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        // minimumSize: MaterialStateProperty.all(size != null ? size : Size(Get.width, 45)),
        // foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(
            horizontal: paddingHorizontal, vertical: paddingVertical)),
        backgroundColor: WidgetStateProperty.all<Color?>(
            backgroundColor ?? hexToColor('#313131')),
        shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
        // foregroundColor: WidgetStateProperty .all<Color>(Colors.transparent),
        surfaceTintColor: WidgetStateProperty.all<Color>(Colors.transparent),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderWidth == 0
                ? BorderSide(color: borderColor)
                : BorderSide(color: borderColor, width: borderWidth),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
