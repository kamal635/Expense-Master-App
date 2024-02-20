import 'package:expense_master/features/onboarding/widgets/button_onboarding.dart';
import 'package:expense_master/features/onboarding/widgets/image_onboarding.dart';
import 'package:expense_master/features/onboarding/widgets/title_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              right: 20.w,
              top: 40.h,
              bottom: 60.h,
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleOnBoardingView(),
                ImageOnBoardingView(),
                ButtonOnBoardingView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
