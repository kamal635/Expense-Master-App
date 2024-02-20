import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppVerticalDivider extends StatelessWidget {
  const AppVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      width: 1.dg,
      thickness: 0.5.dg,
      indent: 5.h.dg,
      endIndent: 2.dg,
    );
  }
}
