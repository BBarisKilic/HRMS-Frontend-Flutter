import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hrms_ui/components/background_clipper.dart';
import 'package:hrms_ui/views/login/login_page.dart';
import 'package:sizer/sizer.dart';

class LoginPagePhone extends StatelessWidget {
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
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      "assets/images/headhunter.svg",
                      height: 12.h,
                      color: const Color(0xff4d59c1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      "assets/images/recruitment.svg",
                      height: 12.h,
                      color: const Color(0xff4d59c1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, bottom: 6.h),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SvgPicture.asset(
                          "assets/images/employee.svg",
                          height: 12.h,
                          color: const Color(0xff4d59c1),
                        ),
                      ),
                    ],
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
