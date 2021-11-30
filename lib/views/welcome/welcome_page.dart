import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/welcome_page_controller.dart';
import 'welcome_page_desktop.dart';
import 'welcome_page_phone.dart';
import 'welcome_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WelcomePage extends StatelessWidget {
  static const String id = '/welcome';

  final _welcomePageController = Get.put(WelcomePageController());

  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.desktop:
            return WelcomePageDesktop();
          case DeviceScreenType.tablet:
            return WelcomePageTablet();
          default:
            return WelcomePagePhone();
        }
      },
    );
  }
}
