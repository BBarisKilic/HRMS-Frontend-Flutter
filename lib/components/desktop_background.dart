import 'package:flutter/material.dart';
import 'package:hrms_ui/utils/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:skeleton_text/skeleton_text.dart';

class DesktopBackground extends StatelessWidget {
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
        Expanded(flex: 8, child: buildBody()),
      ],
    );
  }

  Container buildTopBar() {
    return Container(
      color: kPrimaryColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 5; i++)
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: buildTextAnimation(
                        size: Size(0, 2.h),
                        shimmerColor: Colors.black12,
                        boxColor: Colors.white54,
                        borderRadius: 20.0,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            Icon(
              Icons.person_pin,
              color: Colors.white54,
              size: 6.w,
            ),
          ],
        ),
      ),
    );
  }

  Container buildBody() {
    return Container(
      color: kMainBackgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 4,
                    child: buildCardAnimation(
                      shimmerColor: Colors.white54,
                      borderRadius: 10.0,
                      boxColor: Color(0xffFFA9D4),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 4,
                    child: buildCardAnimation(
                      shimmerColor: Colors.white54,
                      borderRadius: 10.0,
                      boxColor: Color(0xff90DBF4),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 4,
                    child: buildCardAnimation(
                      shimmerColor: Colors.white54,
                      borderRadius: 10.0,
                      boxColor: Color(0xffF8A8A7),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 4,
                    child: buildCardAnimation(
                      shimmerColor: Colors.white54,
                      borderRadius: 10.0,
                      boxColor: Color(0xffD6A9FE),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            buildTextAnimation(
              size: Size(14.w, 1.h),
              shimmerColor: Colors.white54,
              boxColor: Colors.grey[300],
              borderRadius: 20.0,
            ),
            const Spacer(),
            Expanded(
              flex: 16,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: buildSingleCard(),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: buildSingleCard(),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: buildSingleCard(),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 16,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: buildSingleCard(),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: buildSingleCard(),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 8,
                    child: buildSingleCard(),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Container buildTextAnimation({
    Size? size,
    EdgeInsets? margin,
    required Color shimmerColor,
    required double borderRadius,
    Color? boxColor,
  }) {
    return Container(
      height: size?.height,
      width: size?.width,
      margin: margin?.copyWith(right: 1.w),
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

  SkeletonAnimation buildCardAnimation({
    required Color shimmerColor,
    required double borderRadius,
    Color? boxColor,
  }) {
    return SkeletonAnimation(
      shimmerColor: shimmerColor,
      borderRadius: BorderRadius.circular(borderRadius),
      shimmerDuration: 1000,
      child: Container(
        decoration: BoxDecoration(
          color: boxColor ?? Colors.grey,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  Container buildSingleCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Expanded(
            flex: 2,
            child: Icon(
              Icons.person_outline,
              color: Colors.black54,
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            child: buildTextAnimation(
              shimmerColor: Colors.white54,
              borderRadius: 20.0,
              size: Size(20.w, 0.0),
            ),
          ),
          const Spacer(),
          Expanded(
            child: buildTextAnimation(
              shimmerColor: Colors.white54,
              borderRadius: 20.0,
              size: Size(14.w, 0.0),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                      shimmerColor: Colors.white54, borderRadius: 10.0),
                ),
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                      shimmerColor: Colors.white54, borderRadius: 10.0),
                ),
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                      shimmerColor: Colors.white54, borderRadius: 10.0),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                      shimmerColor: Colors.white54, borderRadius: 10.0),
                ),
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                      shimmerColor: Colors.white54, borderRadius: 10.0),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                    shimmerColor: Colors.white54,
                    borderRadius: 10.0,
                    boxColor: kPrimaryColor,
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 10,
                  child: buildTextAnimation(
                    shimmerColor: Colors.white54,
                    borderRadius: 10.0,
                    boxColor: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
