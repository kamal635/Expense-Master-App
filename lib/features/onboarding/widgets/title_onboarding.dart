import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';

class TitleOnBoardingView extends StatelessWidget {
  const TitleOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: AppString.welcomeTo,
        style: AppFonts.semiBold_28.copyWith(
          color: AppColor.black,
        ),
        children: [
          TextSpan(
            text: AppString.expense,
            style: AppFonts.semiBold_28.copyWith(
              color: AppColor.secondary,
            ),
          ),
          TextSpan(
            text: AppString.master,
            style: AppFonts.semiBold_28.copyWith(
              color: AppColor.black,
            ),
          )
        ],
      ),
    );
  }
}
