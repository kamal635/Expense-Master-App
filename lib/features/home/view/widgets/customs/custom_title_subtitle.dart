import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomTitleAndSubTitle extends StatelessWidget {
  const CustomTitleAndSubTitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.fontSizeTitle,
    this.fontSizeSubTitle,
    this.fontColor,
    this.titleColor,
  });
  final String title;
  final String? subTitle;
  final TextStyle? fontSizeTitle;
  final TextStyle? fontSizeSubTitle;
  final Color? fontColor;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style:
              fontSizeTitle ?? AppFonts.regular_12.copyWith(color: titleColor),
        ),
        spaceheight(5),
        Text(
          subTitle ?? r"$0",
          style: fontSizeSubTitle ??
              AppFonts.regular_12.copyWith(color: fontColor),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
