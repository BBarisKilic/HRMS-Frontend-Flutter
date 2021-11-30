import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../components/welcome_button.dart';
import '../../controllers/welcome_page_controller.dart';
import '../../utils/constants.dart';
import '../login/login_page.dart';
import '../signup/signup_page.dart';
import 'package:sizer/sizer.dart';

class WelcomePagePhone extends StatelessWidget {
  final WelcomePageController _welcomePageController = Get.find();

  WelcomePagePhone({Key? key}) : super(key: key);

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
              color: kPrimaryDarkColor,
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
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Text(
            kDescriptionText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
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
