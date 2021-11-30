import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/constants.dart';
import 'views/home/home_page.dart';
import 'views/login/login_page.dart';
import 'views/signup/signup_page.dart';
import 'views/welcome/welcome_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const HRMSApp());
}

class HRMSApp extends StatelessWidget {
  const HRMSApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          fontFamily: 'NanumGothicCoding',
          primaryColor: kPrimaryColor,
          primaryColorDark: kPrimaryDarkColor,
        ),
        getPages: [
          GetPage(
            name: HomePage.id,
            page: () => const HomePage(),
            transition: Transition.fadeIn,
            transitionDuration: const Duration(milliseconds: 500),
          ),
          GetPage(
            name: WelcomePage.id,
            page: () => WelcomePage(),
            transition: Transition.fadeIn,
            transitionDuration: const Duration(milliseconds: 500),
          ),
          GetPage(
            name: LoginPage.id,
            page: () => LoginPage(),
            transition: Transition.fadeIn,
            transitionDuration: const Duration(milliseconds: 500),
          ),
          GetPage(
            name: SignupPage.id,
            page: () => SignupPage(),
            transition: Transition.fadeIn,
            transitionDuration: const Duration(milliseconds: 500),
          ),
        ],
        initialRoute: WelcomePage.id,
      );
    });
  }
}
