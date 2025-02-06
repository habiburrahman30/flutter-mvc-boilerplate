import 'package:flutter/material.dart';
import '../helpers/hex_color.dart';

class PasswordInput extends StatelessWidget {
  final void Function(String)? onChanged;
  final void Function()? onPressed;
  final void Function(String)? onSubmitted;
  final bool obscureText;
  final TextEditingController? controller;
  final String? errorText;
  final String labelText;
  final String hintText;
  final String labelFontFamily;
  final double labelFontSize;
  final FontWeight labelFontWeight;
  final Color labelFontColor;
  final TextInputType keyboardType;
  final bool isRequired;
  final Color? fillColor;
  final Color? cursorColor;

  PasswordInput({
    super.key,
    required this.onChanged,
    required this.onPressed,
    this.onSubmitted,
    required this.obscureText,
    this.controller,
    this.errorText,
    this.labelText = 'Label Text',
    this.hintText = '********',
    this.labelFontFamily = 'Langar-Regular',
    this.labelFontSize = 16,
    this.labelFontWeight = FontWeight.w500,
    this.labelFontColor = const Color(0x0041525A),
    this.keyboardType = TextInputType.text,
    this.isRequired = true,
    this.fillColor,
    this.cursorColor,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      onSubmitted: onSubmitted,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? Colors.grey[200],
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
        hintText: hintText,
        border: OutlineInputBorder(),
        hintStyle: TextStyle(
          fontFamily: 'Manrope',
          fontSize: 14.0,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: IconButton(
          padding: const EdgeInsets.all(0.0),
          icon: Icon(
            obscureText
                ? Icons.visibility_off_rounded
                : Icons.visibility_rounded,
            color: hexToColor('#78909C'),
          ),
          onPressed: onPressed,
        ),
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
        // errorText: validateResetNewPassword(authC.forgotNewPassword.value),
      ),
    );
  }
}
