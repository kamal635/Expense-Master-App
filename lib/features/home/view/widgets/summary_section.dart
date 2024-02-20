import 'package:expense_master/features/home/view/widgets/average_daily.dart';
import 'package:expense_master/features/home/view/widgets/summary_sum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SummarySum(),
        Divider(
          thickness: 0.5.dg,
        ),
        const AverageDaily(),
      ],
    );
  }
}
