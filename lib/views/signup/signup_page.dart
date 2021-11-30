import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/signup_page_controller.dart';
import 'signup_page_dekstop.dart';
import 'signup_page_phone.dart';
import 'signup_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPage extends StatelessWidget {
  static const String id = '/signup';

  late final SignupPageController _signupPageController;

  SignupPage({Key? key}) : super(key: key) {
    _signupPageController = Get.put(SignupPageController());
  }

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
              return const SignupPageDesktop();
            case DeviceScreenType.tablet:
              return const SignupPageTablet();
            default:
              return SignupPagePhone();
          }
        },
      ),
    );
  }
}
