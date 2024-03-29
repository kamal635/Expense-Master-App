import 'package:expense_master/core/icons/app_icon.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:expense_master/core/widgets/app_icon_button.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitchMonthsAndYears extends StatelessWidget {
  const CustomSwitchMonthsAndYears({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
        child: Row(
          children: [
            // icon left
            AppIconButton(
              icon: AppIcons.arrowBack,
              colorIcon: AppColor.white,
              onPressed: () {},
            ),

            // months and years
            Expanded(
              child: CustomTitleAndSubTitle(
                title: "2024",
                subTitle: "February",
                fontSizeSubTitle: AppFonts.semiBold_14,
              ),
            ),

            // icon right
            AppIconButton(
              icon: AppIcons.arrowForward,
              colorIcon: AppColor.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
