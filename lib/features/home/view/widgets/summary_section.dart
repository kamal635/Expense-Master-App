import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/icons/app_icon.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_sum.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummarySectionMonthlyAndDailyHomeView extends StatelessWidget {
  const SummarySectionMonthlyAndDailyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: const IntrinsicHeight(
        child: Row(
          children: [
            // Income
            CustomSumHomeView(
              title: AppString.income,
              icon: AppIcons.circleUp,
              colorValueMonthly: AppColor.green,
              iconColor: AppColor.green,
              colorDivider: AppColor.green,
            ),

            // Expense
            CustomSumHomeView(
              title: AppString.expense,
              icon: AppIcons.circleDown,
              colorValueMonthly: AppColor.darkRed,
              iconColor: AppColor.darkRed,
              colorDivider: AppColor.darkRed,
            ),

            // Total
            CustomSumHomeView(
              title: AppString.total,
              icon: AppIcons.total,
            ),
          ],
        ),
      ),
    );
  }
}
