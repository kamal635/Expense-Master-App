import 'package:expense_master/core/Strings/app_hive.dart';
import 'package:expense_master/core/dependency%20injection/di.dart';
import 'package:expense_master/core/helper/bloc_observer.dart';
import 'package:expense_master/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> allMethodsToInitial() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await Future.wait([
    setupGetIt(),
    Hive.initFlutter(),
    ScreenUtil.ensureScreenSize(),
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
  ]);
  await Hive.openBox(AppHive.googleSignInBox);
}