import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/controllers/welcome_page_controller.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:sizer/sizer.dart';

class WelcomePagePhone extends StatelessWidget {
  final WelcomePageController _welcomePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: const Color(0xff8286F4),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: buildTopSide(),
            ),
            Expanded(
              flex: 4,
              child: buildBottomSide(),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTopSide() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Obx(() {
        return AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: _welcomePageController.isImageVisible ? 1 : 0,
          child: SvgPicture.asset(
            "assets/images/human_resources.svg",
            width: 80.w,
            color: const Color(0xff4d59c1),
          ),
        );
      }),
    );
  }

  Padding buildBottomSide() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "HR Manager",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Human Resources Management System",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(LoginPage.id);
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 20.0),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Text(
              "Log in",
              style: TextStyle(
                color: const Color(0xff8286F4),
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 20.0),
              ),
              side: MaterialStateProperty.all(
                BorderSide(color: Colors.white),
              ),
            ),
            child: Text(
              "Sign up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
