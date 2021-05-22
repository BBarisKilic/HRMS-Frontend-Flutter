import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:sizer/sizer.dart';

class WelcomeButton extends StatelessWidget {
  WelcomeButton({
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.buttonColor,
    required this.borderColor,
  });

  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color buttonColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 20.0),
        ),
        side: MaterialStateProperty.all(
          BorderSide(color: borderColor),
        ),
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: GetPlatform.isMobile ? 12.sp : 8.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
