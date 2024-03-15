import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_sum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummarySectionMonthlyAndDailyHomeView extends StatelessWidget {
  const SummarySectionMonthlyAndDailyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primary,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        child: const Row(
          children: [
            // Income
            CustomSumHomeView(
              title: AppString.income,
              colorValueMonthly: AppColor.button,
            ),

            // Expense
            CustomSumHomeView(
              title: AppString.expense,
              colorValueMonthly: AppColor.red,
            ),

            // Total
            CustomSumHomeView(
              title: AppString.total,
            ),
          ],
        ),
      ),
    );
  }
}
