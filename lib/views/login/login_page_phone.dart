import 'package:flutter/material.dart';
import 'package:hrms_ui/components/background_clipper.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:sizer/sizer.dart';

class LoginPagePhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: BackgroundClipper(LoginPage.id),
        child: Container(
          height: 60.h,
          width: 100.w,
          color: Color(0xff8286F4),
        ),
      ),
    );
  }
}
