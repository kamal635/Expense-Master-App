import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/icons/app_icon.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/sum_home.dart';
import 'package:flutter/material.dart';

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
