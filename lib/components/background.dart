import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:skeleton_text/skeleton_text.dart';

class Background extends StatelessWidget {
  final DeviceScreenType deviceScreenType;

  const Background({Key? key, required this.deviceScreenType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: deviceScreenType == DeviceScreenType.desktop
          ? Row(
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
            )
          : buildMainPage(),
    );
  }

  Container buildLeftPanel() {
    return Container(
      decoration: const BoxDecoration(
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
            for (int i = 0;
                i < (deviceScreenType == DeviceScreenType.desktop ? 5 : 4);
                i++)
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

  Expanded coloredBox(Color color, {bool addSpace = false}) {
    return Expanded(
      flex: addSpace ? 5 : 4,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: buildCardAnimation(
              shimmerColor: Colors.white54,
              borderRadius: 10.0,
              boxColor: color,
            ),
          ),
          addSpace ? const Spacer() : const SizedBox(),
        ],
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
                  coloredBox(const Color(0xffFFA9D4), addSpace: true),
                  coloredBox(const Color(0xff90DBF4), addSpace: true),
                  coloredBox(const Color(0xffF8A8A7),
                      addSpace: deviceScreenType == DeviceScreenType.desktop
                          ? true
                          : false),
                  deviceScreenType == DeviceScreenType.desktop
                      ? coloredBox(const Color(0xffD6A9FE))
                      : const SizedBox(),
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
                  deviceScreenType == DeviceScreenType.desktop
                      ? const Spacer()
                      : const SizedBox(),
                  deviceScreenType == DeviceScreenType.desktop
                      ? Expanded(
                          flex: 8,
                          child: buildSingleCard(),
                        )
                      : const SizedBox(),
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
                  deviceScreenType == DeviceScreenType.desktop
                      ? const Spacer()
                      : const SizedBox(),
                  deviceScreenType == DeviceScreenType.desktop
                      ? Expanded(
                          flex: 8,
                          child: buildSingleCard(),
                        )
                      : const SizedBox(),
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const Expanded(
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
