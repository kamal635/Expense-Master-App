import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/widgets/app_vertical_divider.dart';

import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';

class SummarySum extends StatelessWidget {
  const SummarySum({super.key});

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Row(
        children: [
          // Income
          CustomTitleAndSubTitle(
            title: AppString.income,
            subTitle: r"$0",
            fontColor: AppColor.green,
          ),

          AppVerticalDivider(),

          // Expense
          CustomTitleAndSubTitle(
            title: AppString.expense,
            subTitle: r"$0",
            fontColor: AppColor.darkRed,
          ),

          AppVerticalDivider(),

          // Total
          CustomTitleAndSubTitle(
            title: AppString.total,
            subTitle: r"$0",
          ),
        ],
      ),
    );
  }
}
