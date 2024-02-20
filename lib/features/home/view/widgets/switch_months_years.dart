import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:expense_master/core/widgets/app_icon_button.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitchMonthsAndYears extends StatelessWidget {
  const CustomSwitchMonthsAndYears({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: Row(
        children: [
          // icon left
          AppIconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),

          // months and years
          CustomTitleAndSubTitle(
            title: "2024",
            subTitle: "February",
            fontSizeSubTitle: AppFonts.semiBold_14,
          ),

          // icon right
          AppIconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
