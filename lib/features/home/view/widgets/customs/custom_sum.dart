import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_avarage_dialy.dart';
import 'package:expense_master/features/home/view/widgets/customs/custom_title_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSumHomeView extends StatelessWidget {
  const CustomSumHomeView(
      {super.key,
      this.dailyValue,
      this.monthlyValue,
      required this.title,
      this.colorValueMonthly,
      this.titleColor});
  final String? dailyValue;
  final String? monthlyValue;
  final String title;

  final Color? colorValueMonthly;

  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    // expand column:
    /// So that each column takes up equal space along the width of the screen
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          children: [
            CustomTitleAndSubTitle(
              title: title,
              subTitle: monthlyValue,
              fontColor: colorValueMonthly,
              titleColor: titleColor,
            ),
            spaceheight(4),
            LayoutBuilder(
              builder: (context, constraints) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      constraints.constrainWidth() ~/ 6,
                      (index) => Container(
                            width: 4,
                            height: 1,
                            color: AppColor.grey,
                          )),
                );
              },
            ),
            spaceheight(8),
            CustomAverageDaily(title: dailyValue)
          ],
        ),
      ),
    );
  }
}
