import 'package:flutter/material.dart';
import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsUserFinance extends StatelessWidget {
  const DetailsUserFinance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40.h,
      decoration: const BoxDecoration(
        color: AppColor.secondary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 20.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: AppColor.button,
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "Fri",
                style: AppFonts.semiBold_12.copyWith(color: AppColor.black),
              ),
            ),
            spaceWidth(5),
            RichText(
              text: TextSpan(
                style: AppFonts.semiBold_20,
                text: "24 ",
                children: [
                  TextSpan(
                    style: AppFonts.regular_12,
                    text: "02.2024",
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width / 4.75,
              child: Text(
                "555555555",
                style: AppFonts.regular_14.copyWith(
                  color: AppColor.button,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            spaceWidth(10),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 4.75,
              child: Text(
                "555555555",
                style: AppFonts.regular_14.copyWith(
                  color: AppColor.red,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
