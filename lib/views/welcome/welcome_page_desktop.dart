import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hrms_ui/utils/constants.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:sizer/sizer.dart';

class WelcomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: buildLeftPanel(),
          ),
          Expanded(
            flex: 5,
            child: buildMainPage(),
          ),
        ],
      ),
    );
  }

  Container buildLeftPanel() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(80.0)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTextAnimation(
            size: Size(14.w, 2.h),
            margin: EdgeInsets.symmetric(
              vertical: 2.h,
              horizontal: 4.w,
            ),
            shimmerColor: Colors.white54,
            boxColor: Colors.grey[300],
            borderRadius: 20.0,
          ),
          buildTextAnimation(
            size: Size(20.w, 1.h),
            margin: EdgeInsets.symmetric(
              vertical: 1.h,
              horizontal: 4.w,
            ),
            shimmerColor: Colors.white54,
            boxColor: Colors.grey[300],
            borderRadius: 20.0,
          ),
          for (int i = 0; i < 6; i++)
            buildTextAnimation(
              size: Size(16.w, 1.h),
              margin: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 8.w,
              ),
              shimmerColor: Colors.white54,
              boxColor: Colors.grey[300],
              borderRadius: 20.0,
            ),
          buildTextAnimation(
            size: Size(20.w, 1.h),
            margin: EdgeInsets.symmetric(
              vertical: 1.h,
              horizontal: 4.w,
            ),
            shimmerColor: Colors.white54,
            boxColor: Colors.grey[300],
            borderRadius: 20.0,
          ),
          for (int i = 0; i < 2; i++)
            buildTextAnimation(
              size: Size(16.w, 1.h),
              margin: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 8.w,
              ),
              shimmerColor: Colors.white54,
              boxColor: Colors.grey[300],
              borderRadius: 20.0,
            ),
        ],
      ),
    );
  }

  Column buildMainPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 1, child: buildTopBar()),
        Expanded(flex: 7, child: buildBody()),
      ],
    );
  }

  Container buildTopBar() {
    return Container(
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 5; i++)
            buildTextAnimation(
              size: Size(18.w, 2.h),
              margin: EdgeInsets.symmetric(
                vertical: 2.h,
                horizontal: 4.w,
              ),
              shimmerColor: Colors.black12,
              boxColor: Colors.white54,
              borderRadius: 20.0,
            ),
          Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Icon(
              Icons.person_pin,
              color: Colors.white54,
              size: 6.w,
            ),
          )
        ],
      ),
    );
  }

  Container buildBody() {
    return Container(
      color: kMainBackgroundColor,
    );
  }

  Container buildTextAnimation({
    required Size size,
    required EdgeInsets margin,
    required Color shimmerColor,
    required double borderRadius,
    Color? boxColor,
  }) {
    return Container(
      height: size.height,
      width: size.width,
      margin: margin.copyWith(right: 1.w),
      child: SkeletonAnimation(
        shimmerColor: shimmerColor,
        borderRadius: BorderRadius.circular(borderRadius),
        shimmerDuration: 1000,
        child: Container(
          decoration: BoxDecoration(
            color: boxColor ?? Colors.grey,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
