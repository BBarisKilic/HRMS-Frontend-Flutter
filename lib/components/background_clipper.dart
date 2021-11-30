import 'package:flutter/material.dart';
import '../views/login/login_page.dart';
import '../views/signup/signup_page.dart';

class BackgroundClipper extends CustomClipper<Path> {
  BackgroundClipper(this.routeId);

  final String routeId;

  @override
  Path getClip(Size size) {
    var path = Path();

    switch (routeId) {
      case LoginPage.id:
        path.lineTo(0, size.height);
        path.quadraticBezierTo(size.width / 4, size.height * 0.8,
            size.width / 2, size.height * 0.9);
        path.quadraticBezierTo(
            3 * size.width / 4, size.height, size.width, size.height * 0.9);
        path.lineTo(size.width, 0);
        break;
      case SignupPage.id:
        path.lineTo(0, size.height * 0.9);
        path.quadraticBezierTo(
            size.width / 4, size.height, size.width / 2, size.height * 0.9);
        path.quadraticBezierTo(
            3 * size.width / 4, size.height * 0.8, size.width, size.height);
        path.lineTo(size.width, 0);
        break;
      default:
        break;
    }

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
