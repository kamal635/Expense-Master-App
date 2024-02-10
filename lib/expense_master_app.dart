import 'package:expense_master/core/routing/app_router.dart';
import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseMasterApp extends StatelessWidget {
  const ExpenseMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.scaffold,
        ),
        initialRoute: NameRouter.onbordingView,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
