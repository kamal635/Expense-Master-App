import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/features/home/view/widgets/summary_section.dart';
import 'package:expense_master/features/home/view/widgets/switch_months_years.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const CustomSwitchMonthsAndYears(), //section switch date
          spaceheight(3),
          const SummarySection(),
        ],
      )),
    );
  }
}
