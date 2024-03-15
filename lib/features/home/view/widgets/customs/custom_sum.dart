import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_avarage_dialy.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';

class CustomSumHomeView extends StatelessWidget {
  const CustomSumHomeView(
      {super.key,
      this.dailyValue,
      this.monthlyValue,
      required this.title,
      this.colorValueMonthly,
      this.titleColor});
  final String? dailyValue;
  final String? monthlyValue;
  final String title;

  final Color? colorValueMonthly;

  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    // expand column:
    /// So that each column takes up equal space along the width of the screen
    return Expanded(
      child: Column(
        children: [
          CustomTitleAndSubTitle(
            title: title,
            subTitle: monthlyValue,
            fontColor: colorValueMonthly,
            titleColor: titleColor,
          ),
          const Divider(
            color: AppColor.button,
            thickness: 0.3,
          ),
          spaceheight(4),
          CustomAverageDaily(title: dailyValue)
        ],
      ),
    );
  }
}
