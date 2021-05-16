import 'package:flutter/material.dart';
import 'package:hrms_ui/components/desktop_background.dart';

class WelcomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DesktopBackground(),
      ],
    );
  }
}
