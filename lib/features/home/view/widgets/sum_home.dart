import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/icons/app_icon.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_avarage_dialy.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummarySectionMonthlyAndDailyHomeView extends StatelessWidget {
  const SummarySectionMonthlyAndDailyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Row(
        children: [
          // Income
          SumHomeView(
            title: AppString.income,
            icon: AppIcons.circleUp,
            colorValueMonthly: AppColor.green,
            iconColor: AppColor.green,
            colorDivider: AppColor.green,
          ),

          // Expense
          SumHomeView(
            title: AppString.income,
            icon: AppIcons.circleDown,
            colorValueMonthly: AppColor.darkRed,
            iconColor: AppColor.darkRed,
            colorDivider: AppColor.darkRed,
          ),

          // Total
          SumHomeView(
            title: AppString.total,
            icon: AppIcons.total,
          ),
        ],
      ),
    );
  }
}

class SumHomeView extends StatelessWidget {
  const SumHomeView(
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
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              CustomTitleAndSubTitle(
                title: title,
                subTitle: monthlyValue,
                fontColor: colorValueMonthly,
              ),
              Icon(
                icon,
                color: iconColor,
                size: 20.dg,
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
