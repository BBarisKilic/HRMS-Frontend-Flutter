import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/components/background.dart';
import 'package:hrms_ui/components/welcome_button.dart';
import 'package:hrms_ui/controllers/welcome_page_controller.dart';
import 'package:hrms_ui/utils/constants.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:hrms_ui/views/signup/signup_page.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class WelcomePageDesktop extends StatelessWidget {
  final WelcomePageController _welcomePageController = Get.find();

  WelcomePageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(deviceScreenType: DeviceScreenType.desktop),
          Center(
            child: Card(
              elevation: 20,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: kPrimaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: buildTopSide(),
                    ),
                    Expanded(
                      flex: 3,
                      child: buildBottomSide(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTopSide() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
      child: Obx(
        () {
          return AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: _welcomePageController.isImageVisible ? 1 : 0,
            child: SvgPicture.asset(
              kHumanResourcesIconLocation,
              color: kPrimaryDarkColor,
              height: 100.h,
              fit: BoxFit.contain,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text(
            kAppTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Text(
            kDescriptionText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 6.sp,
            ),
          ),
          const Spacer(
            flex: 6,
          ),
          WelcomeButton(
            onPressed: () => Get.toNamed(LoginPage.id),
            buttonColor: Colors.white,
            borderColor: Colors.white,
            textColor: kPrimaryColor,
            text: kLogInText,
          ),
          const Spacer(
            flex: 2,
          ),
          WelcomeButton(
            onPressed: () => Get.toNamed(SignupPage.id),
            buttonColor: kPrimaryColor,
            borderColor: Colors.white,
            textColor: Colors.white,
            text: kSignUpText,
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
