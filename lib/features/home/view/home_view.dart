import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/styling/app_color.dart';
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
            spaceheight(10),
            const SummarySectionMonthlyAndDailyHomeView(),
            spaceheight(5),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                    NewWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColor.secondary,
          height: 30,
          width: 380,
        ),
        const SizedBox(
            width: double.infinity,
            child: Card(
              color: AppColor.primary,
              elevation: 0,
              child: Column(
                children: [
                  Text(
                    "asdasd",
                    style: TextStyle(color: AppColor.white),
                  ),
                  Text(
                    "asdasd",
                    style: TextStyle(color: AppColor.white),
                  ),
                  Text(
                    "asdasd",
                    style: TextStyle(color: AppColor.white),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
