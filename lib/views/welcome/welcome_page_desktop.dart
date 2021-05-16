import 'package:flutter/material.dart';
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
          Container(
            height: 1.h,
            width: 20.w,
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: SkeletonAnimation(
              shimmerColor: Colors.white54,
              borderRadius: BorderRadius.circular(20.0),
              shimmerDuration: 1000,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
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
    );
  }

  Container buildBody() {
    return Container(
      color: kMainBackgroundColor,
    );
  }
}
