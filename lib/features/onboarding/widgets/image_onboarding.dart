import 'package:expense_master/core/Strings/app_image.dart';
import 'package:flutter/material.dart';

class ImageOnBoardingView extends StatelessWidget {
  const ImageOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImage.onBoarding,
    );
  }
}
