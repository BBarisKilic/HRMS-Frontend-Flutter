import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/components/background_clipper.dart';
import 'package:hrms_ui/controllers/login_page_controller.dart';
import 'package:hrms_ui/utils/constants.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:sizer/sizer.dart';

class LoginPagePhone extends StatelessWidget {
  final LoginPageController _loginPageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: BackgroundClipper(LoginPage.id),
            child: buildTopSide(),
          ),
          buildBottomSide(),
        ],
      ),
    );
  }

  Container buildTopSide() {
    return Container(
      height: 60.h,
      width: 100.w,
      color: kPrimaryColor,
      child: Stack(
        children: [
          SafeArea(
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              top: 12.h,
              left: _loginPageController.didAnimationStart ? 10.w : -20.w,
              child: SvgPicture.asset(
                kHumanResourcesIconLocation,
                width: 22.w,
                color: kPrimaryDarkColor,
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              top: 16.h,
              right: _loginPageController.didAnimationStart ? 10.w : -20.w,
              child: SvgPicture.asset(
                kHeadhunterIconLocation,
                width: 22.w,
                color: kPrimaryDarkColor,
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              top: 28.h,
              left: _loginPageController.didAnimationStart ? 30.w : -20.w,
              child: Text(
                kWelcomeText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              top: 34.h,
              right: _loginPageController.didAnimationStart ? 30.w : -20.w,
              child: Text(
                kBackText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              bottom: 9.h,
              left: _loginPageController.didAnimationStart ? 10.w : -20.w,
              child: SvgPicture.asset(
                kRecruitmentIconLocation,
                width: 22.w,
                color: kPrimaryDarkColor,
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              bottom: 5.h,
              right: _loginPageController.didAnimationStart ? 10.w : -20.w,
              child: SvgPicture.asset(
                kEmployeeIconLocation,
                width: 22.w,
                color: kPrimaryDarkColor,
              ),
            );
          }),
        ],
      ),
    );
  }

  SafeArea buildBottomSide() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            TextField(
              cursorColor: kPrimaryColor,
              textAlignVertical: TextAlignVertical.center,
              controller: _loginPageController.emailTextEditingController,
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w700,
              ),
              decoration: const InputDecoration(
                hintText: kEmailText,
                hintStyle: TextStyle(color: kPrimaryColor),
                prefixIcon: const Icon(
                  Icons.mail_outline_rounded,
                  color: kPrimaryColor,
                ),
                suffixIcon: const Icon(
                  Icons.done,
                  color: kPrimaryColor,
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: kPrimaryColor, width: 0.0),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide:
                      const BorderSide(color: kPrimaryColor, width: 0.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
