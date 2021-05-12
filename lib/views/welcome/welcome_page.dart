import 'package:flutter/material.dart';
import 'package:hrms_ui/views/welcome/welcome_page_desktop.dart';
import 'package:hrms_ui/views/welcome/welcome_page_phone.dart';
import 'package:hrms_ui/views/welcome/welcome_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WelcomePage extends StatelessWidget {
  static const String id = '/welcome';

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
