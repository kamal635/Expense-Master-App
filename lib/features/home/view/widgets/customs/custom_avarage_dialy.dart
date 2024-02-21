import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomAverageDaily extends StatelessWidget {
  const CustomAverageDaily({
    super.key,
    required this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? r"0$ Daily",
      style: AppFonts.regular_12.copyWith(color: AppColor.grey),
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
