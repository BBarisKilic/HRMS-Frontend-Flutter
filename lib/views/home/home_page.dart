import 'package:flutter/material.dart';
import 'package:hrms_ui/views/home/home_page_desktop.dart';
import 'package:hrms_ui/views/home/home_page_phone.dart';
import 'package:hrms_ui/views/home/home_page_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  static const String id = "/";

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.desktop:
            return HomePageDesktop();
          case DeviceScreenType.tablet:
            return HomePageTablet();
          default:
            return HomePagePhone();
        }
      },
    );
  }
}
