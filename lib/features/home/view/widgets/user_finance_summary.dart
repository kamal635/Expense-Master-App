import 'package:expense_master/features/home/view/widgets/sub_widgets/user_finance_summary/body_user_finance.dart';
import 'package:expense_master/features/home/view/widgets/sub_widgets/user_finance_summary/details_user_finance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserFinanceSummary extends StatelessWidget {
  const UserFinanceSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: const Column(
        children: [
          // Top Container
          DetailsUserFinance(),
          // Body Container
          BodyUserFinance(),
        ],
      ),
    );
  }
}
