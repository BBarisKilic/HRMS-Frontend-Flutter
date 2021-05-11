import 'package:flutter/material.dart';
import 'package:hrms_ui/views/login/login_page_desktop.dart';
import 'package:hrms_ui/views/login/login_page_phone.dart';
import 'package:hrms_ui/views/login/login_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  static const String id = '/login';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.desktop:
            return LoginPageDesktop();
          case DeviceScreenType.tablet:
            return LoginPageTablet();
          default:
            return LoginPagePhone();
        }
      },
    );
  }
}
