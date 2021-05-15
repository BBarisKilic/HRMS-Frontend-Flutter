import 'package:flutter/material.dart';
import 'package:hrms_ui/utils/constants.dart';

class LoginSignupTextField extends StatelessWidget {
  LoginSignupTextField({
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final IconData prefixIcon;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      textAlignVertical: TextAlignVertical.center,
      controller: controller,
      style: TextStyle(
        color: kPrimaryDarkColor,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
        prefixIcon: Icon(
          prefixIcon,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: kPrimaryColor,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 0.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: const BorderSide(color: kPrimaryColor, width: 0.0),
        ),
      ),
    );
  }
}
