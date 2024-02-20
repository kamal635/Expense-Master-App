import 'package:expense_master/core/Strings/app_image.dart';
import 'package:expense_master/core/helper/spacing.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.width,
      this.height,
      this.backgroundColor,
      this.textColor,
      required this.title,
      required this.onPressed,
      this.titleWithImage = false});
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final String title;
  final Function() onPressed;
  final bool titleWithImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 45.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColor.primary,
        ),
        onPressed: onPressed,
        child:
            titleWithImage // if need title with image can be set true else if false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImage.gLogo,
                        height: 20.h,
                        color: AppColor.withe,
                      ),
                      spaceWidth(8),
                      Text(
                        title,
                        style: AppFonts.medium_14.copyWith(
                          color: textColor ?? AppColor.withe,
                        ),
                      ),
                    ],
                  )
                // only title in button without any widgets
                : Text(
                    title,
                    style: AppFonts.medium_14.copyWith(
                      color: textColor ?? AppColor.withe,
                    ),
                  ),
      ),
    );
  }
}
