import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_avarage_dialy.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSumHomeView extends StatelessWidget {
  const CustomSumHomeView(
      {super.key,
      this.dailyValue,
      this.iconColor,
      this.monthlyValue,
      required this.title,
      required this.icon,
      this.colorValueMonthly,
      this.colorDivider});
  final String? dailyValue;
  final String? monthlyValue;
  final String title;
  final Color? iconColor;
  final Color? colorValueMonthly;
  final Color? colorDivider;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    // expand column:
    /// So that each column takes up equal space along the width of the screen
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              // expand this:
              /// So that each of them takes the remaining space,
              ///  and pushes the icon to the end of the row
              Expanded(
                child: CustomTitleAndSubTitle(
                  title: title,
                  subTitle: monthlyValue,
                  fontColor: colorValueMonthly,
                ),
              ),
              Icon(
                icon,
                color: iconColor,
                size: 20.h,
              ),
            ],
          ),
          Divider(
            endIndent: 10.w,
            indent: 10.w,
            color: colorDivider ?? AppColor.black,
          ),
          CustomAverageDaily(title: dailyValue)
        ],
      ),
    );
  }
}
