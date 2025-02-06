import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCheckbox extends StatelessWidget {
  final bool value;
  final bool disabled;
  final double size;
  final Color activeColor;
  final Color deactiveColor;
  final Color checkColor;
  void Function(bool?)? onChanged;

  CustomCheckbox({
    super.key,
    required this.value,
    this.disabled = false,
    required this.size,
    this.activeColor = Colors.blue,
    this.deactiveColor = Colors.grey,
    this.checkColor = Colors.blueAccent,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        disabledColor: Colors.transparent,
        unselectedWidgetColor: Colors.transparent,
      ),
      child: SizedBox(
        width: size,
        height: size,
        child: Container(
          decoration: BoxDecoration(
            color: value ? activeColor : deactiveColor,
            borderRadius: BorderRadius.circular(6),
          ),
          clipBehavior: Clip.hardEdge,
          child: Transform.scale(
            scale: size / Checkbox.width,
            child: Checkbox(
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              activeColor: Colors.transparent,
              checkColor: checkColor,
              side: WidgetStateBorderSide.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return BorderSide(color: Colors.transparent);
                } else {
                  return BorderSide(color: Colors.transparent);
                }
              }),
              value: value,
              onChanged: onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
