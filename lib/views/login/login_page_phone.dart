import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/components/background_clipper.dart';
import 'package:hrms_ui/controllers/login_page_controller.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:sizer/sizer.dart';

class LoginPagePhone extends StatelessWidget {
  final LoginPageController _loginPageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: BackgroundClipper(LoginPage.id),
        child: Container(
          height: 60.h,
          width: 100.w,
          color: const Color(0xff8286F4),
          child: SafeArea(
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {
                    _loginPageController.reset();
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, left: 10.w),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Obx(() {
                      return AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity:
                            _loginPageController.isFirstImageVisible ? 1 : 0,
                        child: SvgPicture.asset(
                          "assets/images/headhunter.svg",
                          height: 12.h,
                          color: const Color(0xff4d59c1),
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, right: 10.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Obx(() {
                      return AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity:
                            _loginPageController.isFirstTextVisible ? 1 : 0,
                        child: Text(
                          "welcome",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h, right: 10.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Obx(() {
                      return AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity:
                            _loginPageController.isSecondImageVisible ? 1 : 0,
                        child: SvgPicture.asset(
                          "assets/images/recruitment.svg",
                          height: 12.h,
                          color: const Color(0xff4d59c1),
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h, left: 10.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(() {
                      return AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity:
                            _loginPageController.isSecondTextVisible ? 1 : 0,
                        child: Text(
                          "back",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.sp,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8.h, left: 10.w),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Obx(() {
                          return AnimatedOpacity(
                            duration: Duration(seconds: 1),
                            opacity: _loginPageController.isThirdImageVisible
                                ? 1
                                : 0,
                            child: SvgPicture.asset(
                              "assets/images/employee.svg",
                              height: 12.h,
                              color: const Color(0xff4d59c1),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h, right: 10.w),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Hero(
                      tag: "human_resources",
                      child: SvgPicture.asset(
                        "assets/images/human_resources.svg",
                        width: 12.h,
                        color: const Color(0xff4d59c1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
