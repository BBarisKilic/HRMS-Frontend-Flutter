import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/controllers/login_page_controller.dart';
import 'package:hrms_ui/views/login/login_page_desktop.dart';
import 'package:hrms_ui/views/login/login_page_phone.dart';
import 'package:hrms_ui/views/login/login_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  static const String id = '/login';

  final _loginPageController = Get.put(LoginPageController());

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _loginPageController.startAnimation();

    return WillPopScope(
      onWillPop: () {
        Get.back();
        return Future.value(true);
      },
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          switch (sizingInformation.deviceScreenType) {
            case DeviceScreenType.desktop:
              return const LoginPageDesktop();
            case DeviceScreenType.tablet:
              return const LoginPageTablet();
            default:
              return LoginPagePhone();
          }
        },
      ),
    );
  }
}
