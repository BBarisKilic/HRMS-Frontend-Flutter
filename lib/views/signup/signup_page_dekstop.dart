import 'package:flutter/material.dart';
import 'package:hrms_ui/components/background.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(DeviceScreenType.desktop),
      ],
    );
  }
}
