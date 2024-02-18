import 'package:expense_master/core/styling/weight_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppFonts {
  //======================== Rgeular ========================
  static TextStyle normal_14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: WeightFonts.normal,
  );
  //======================== Medium ========================
  static TextStyle medium_14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: WeightFonts.medium,
  );
  //======================== Semi Bold ========================
  static TextStyle semiBold_28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: WeightFonts.semiBold,
  );
  //======================== Bold ========================
  static TextStyle bold_28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: WeightFonts.extraBold,
  );
}
