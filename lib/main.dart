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
        getPages: [
          GetPage(
            name: HomePage.id,
            page: () => HomePage(),
            transition: Transition.fadeIn,
            transitionDuration: Duration(milliseconds: 500),
          ),
          GetPage(
            name: WelcomePage.id,
            page: () => WelcomePage(),
            transition: Transition.fadeIn,
            transitionDuration: Duration(milliseconds: 500),
          ),
          GetPage(
            name: LoginPage.id,
            page: () => LoginPage(),
            transition: Transition.fadeIn,
            transitionDuration: Duration(milliseconds: 500),
          ),
        ],
        initialRoute: WelcomePage.id,
      );
    });
  }
}
