import 'package:expense_master/core/dependency%20injection/di.dart';
import 'package:expense_master/core/helper/bloc_observer.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> allMethodsToInitial() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Bloc observer
  Bloc.observer = MyBlocObserver();

  // initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Get_it
  await setupGetIt();

  // to fix hide string in relase mode because use packages (ScreenUtil)
  ScreenUtil.ensureScreenSize();

  // initialize Hive
  Hive.initFlutter();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColor.primary, // Down => navigation bar color
    statusBarColor: AppColor.scaffold, // Top => status bar color
  ));
}
