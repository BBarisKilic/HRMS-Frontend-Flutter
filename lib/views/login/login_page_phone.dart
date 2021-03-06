import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../components/background_clipper.dart';
import '../../components/login_signup_text_field.dart';
import '../../components/welcome_button.dart';
import '../../controllers/login_page_controller.dart';
import '../../utils/constants.dart';
import 'login_page.dart';
import '../signup/signup_page.dart';
import 'package:sizer/sizer.dart';

class LoginPagePhone extends StatelessWidget {
  final LoginPageController _loginPageController = Get.find();

  LoginPagePhone({Key? key}) : super(key: key);

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
            bottom: false,
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: GetPlatform.isMobile
                  ? const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    )
                  : const SizedBox(),
            ),
          ),
          Obx(() {
            return AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: GetPlatform.isMobile ? 12.h : 4.h,
              left: _loginPageController.didAnimationStart ? 10.w : -20.w,
              child: SvgPicture.asset(
                kEmploymentIconLocation,
                width: 22.w,
                color: kPrimaryDarkColor,
              ),
            );
          }),
          Obx(() {
            return AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: GetPlatform.isMobile ? 16.h : 8.h,
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
              duration: const Duration(milliseconds: 500),
              top: GetPlatform.isMobile ? 28.h : 24.h,
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
              duration: const Duration(milliseconds: 500),
              top: GetPlatform.isMobile ? 34.h : 30.h,
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
              duration: const Duration(milliseconds: 500),
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
              duration: const Duration(milliseconds: 500),
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

  Padding buildBottomSide() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: 40.h,
        width: 100.w,
        child: SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LoginSignupTextField(
                controller: _loginPageController.emailTextEditingController,
                hintText: kEmailText,
                suffixIcon: Icons.done,
                prefixIcon: Icons.email_rounded,
              ),
              const Spacer(),
              LoginSignupTextField(
                controller: _loginPageController.passwordTextEditingController,
                hintText: kPasswordText,
                suffixIcon: Icons.visibility_off_outlined,
                prefixIcon: Icons.lock_rounded,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  kForgotPassword,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Spacer(
                flex: 4,
              ),
              WelcomeButton(
                text: kLogInText,
                onPressed: () {},
                textColor: Colors.white,
                buttonColor: kPrimaryColor,
                borderColor: kPrimaryColor,
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 1,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'or',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 1,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              WelcomeButton(
                text: kSignUpText,
                onPressed: () => Get.offNamed(SignupPage.id),
                textColor: Colors.black54,
                buttonColor: Colors.white,
                borderColor: Colors.black54,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
