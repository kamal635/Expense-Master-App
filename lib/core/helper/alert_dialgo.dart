import 'package:expense_master/core/Strings/app_image.dart';
import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/helper/extensions.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:expense_master/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//================ show dialog when error ==============
void dialogError({required BuildContext context, required String? error}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: Image.asset(
        AppImage.xMark,
        height: 80.h,
        width: 80.w,
        color: AppColor.secondary,
      ),
      title: Text(
        AppString.ohNo,
        style: AppFonts.bold_28,
        textAlign: TextAlign.center,
      ),
      content: Text(
        error!,
        style: AppFonts.normal_14.copyWith(color: AppColor.grey),
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        AppButton(
          title: AppString.tryAgain,
          onPressed: () {
            context.pop();
          },
          backgroundColor: AppColor.secondary,
        ),
      ],
    ),
  );
}

//================ show dialog when success ==============
void dialogSuccess({required BuildContext context, required String success}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: Image.asset(
        AppImage.xMark,
        height: 80.h,
        width: 80.w,
        color: AppColor.secondary,
      ),
      title: Text(
        AppString.ohNo,
        style: AppFonts.bold_28,
        textAlign: TextAlign.center,
      ),
      content: Text(
        success,
        style: AppFonts.normal_14.copyWith(color: AppColor.grey),
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        AppButton(
          title: AppString.tryAgain,
          onPressed: () {
            context.pop();
          },
          backgroundColor: AppColor.secondary,
        ),
      ],
    ),
  );
}
