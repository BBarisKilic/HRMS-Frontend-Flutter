import 'package:flutter/material.dart';
import '../../components/background.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupPageDesktop extends StatelessWidget {
  const SignupPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(deviceScreenType: DeviceScreenType.desktop),
      ],
    );
  }
}
