import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  final String? errorText;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Widget? suffixIcon;
  final void Function()? onTap;
  final bool isRequired;
  final bool readOnly;
  final bool enabled;
  final Color? fillColor;
  final Color? cursorColor;
  final int maxLines;

  TextFieldInput({
    super.key,
    required this.onChanged,
    this.onSubmitted,
    this.controller,
    this.errorText,
    this.hintText = 'hint text',
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.suffixIcon,
    this.onTap,
    this.isRequired = true,
    this.readOnly = false,
    this.enabled = true,
    this.fillColor,
    this.cursorColor,
    this.maxLines = 1,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      controller: controller,
      readOnly: readOnly,
      enabled: enabled,
      maxLines: maxLines,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? Colors.grey[200],
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
        hintText: hintText,
        border: OutlineInputBorder(borderSide: BorderSide.none),
        hintStyle: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 14.0,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: suffixIcon ?? SizedBox(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
        errorMaxLines: 6,
        errorText: errorText,
      ),
    );
  }
}
