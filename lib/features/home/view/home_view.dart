import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/features/home/view/widgets/summary_monthly_and_daily_section.dart';
import 'package:expense_master/features/home/view/widgets/switch_months_years.dart';
import 'package:expense_master/features/home/view/widgets/user_finance_summary.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomSwitchMonthsAndYears(),
            spaceheight(10),
            const SummarySectionMonthlyAndDailyHomeView(),
            spaceheight(8),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, i) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: UserFinanceSummary(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
