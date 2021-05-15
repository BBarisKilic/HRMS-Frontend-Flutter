import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/controllers/signup_page_controller.dart';
import 'package:hrms_ui/views/signup/signup_page_dekstop.dart';
import 'package:hrms_ui/views/signup/signup_page_phone.dart';
import 'package:hrms_ui/views/signup/signup_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPage extends StatelessWidget {
  static const String id = "/signup";

  final _signupPageController = Get.put(SignupPageController());

  @override
  Widget build(BuildContext context) {
    _signupPageController.startAnimation();

    return WillPopScope(
      onWillPop: () {
        Get.back();
        return Future.value(true);
      },
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          switch (sizingInformation.deviceScreenType) {
            case DeviceScreenType.desktop:
              return SignupPageDesktop();
            case DeviceScreenType.tablet:
              return SignupPageTablet();
            default:
              return SignupPagePhone();
          }
        },
      ),
    );
  }
}
