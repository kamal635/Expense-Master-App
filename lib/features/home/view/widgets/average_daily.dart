import 'package:expense_master/features/home/view/widgets/customs/custom_avarage_dialy.dart';
import 'package:flutter/material.dart';

class AverageDaily extends StatelessWidget {
  const AverageDaily({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomAverageDaily(title: r"~$0 Daily"), // Income

        CustomAverageDaily(title: r"~$0 Daily"), // Expense

        CustomAverageDaily(title: r"~$0 Daily"), // Total
      ],
    );
  }
}
