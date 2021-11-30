import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:sizer/sizer.dart';

class LoginSignupTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const LoginSignupTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      autofocus: true,
      style: TextStyle(
        color: kPrimaryDarkColor,
        fontWeight: FontWeight.w700,
        fontSize: 12.sp,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12.sp),
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: Icon(
          suffixIcon,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 0.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(width: 0.0),
        ),
      ),
    );
  }
}
