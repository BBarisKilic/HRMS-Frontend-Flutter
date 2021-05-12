import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/views/home/home_page.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:hrms_ui/views/welcome/welcome_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(HRMSApp());
}

class HRMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          fontFamily: 'NanumGothicCoding',
        ),
        routes: {
          HomePage.id: (context) => HomePage(),
          WelcomePage.id: (context) => WelcomePage(),
          LoginPage.id: (context) => LoginPage(),
        },
        initialRoute: WelcomePage.id,
      );
    });
  }
}
