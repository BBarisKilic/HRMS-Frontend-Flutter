import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/components/welcome_button.dart';
import 'package:hrms_ui/controllers/welcome_page_controller.dart';
import 'package:hrms_ui/utils/constants.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:sizer/sizer.dart';

class WelcomePagePhone extends StatelessWidget {
  final WelcomePageController _welcomePageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: kPrimaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }

  Padding buildTopSide() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Obx(
        () {
          return AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _welcomePageController.isImageVisible ? 1 : 0,
            child: SvgPicture.asset(
              kHumanResourcesIconLocation,
              width: 80.w,
              color: const Color(0xff4d59c1),
            ),
          );
        },
      ),
    );
  }

  Padding buildBottomSide() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                kAppTitle,
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
                kDescriptionText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              WelcomeButton(
                onPressed: () => Get.toNamed(LoginPage.id),
                buttonColor: Colors.white,
                borderColor: Colors.white,
                textColor: kPrimaryColor,
                text: kLogInText,
              ),
              const SizedBox(
                height: 20.0,
              ),
              WelcomeButton(
                onPressed: () {},
                buttonColor: kPrimaryColor,
                borderColor: Colors.white,
                textColor: Colors.white,
                text: kSignUpText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
