import 'package:expense_master/features/onbording/widgets/button_onbording.dart';
import 'package:expense_master/features/onbording/widgets/image_onbording.dart';
import 'package:expense_master/features/onbording/widgets/title_onbording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              TitleOnBordingView(),
              ImageOnBordingView(),
              ButtonOnBordingView(),
            ],
          ),
        ),
      ),
    );
  }
}
