import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/icons/app_icon.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyUserFinance extends StatelessWidget {
  const BodyUserFinance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.primary,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, i) {
                      return Row(
                        children: [
                          const Icon(
                            AppIcons.circleDown,
                          ),
                          spaceWidth(7),
                          const Text("Health"),
                          const Spacer(),
                          Text(
                            "555555555",
                            style: AppFonts.regular_14.copyWith(
                              color: AppColor.red,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
