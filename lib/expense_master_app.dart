import 'package:expense_master/core/dependency%20injection/di.dart';
import 'package:expense_master/core/routing/app_router.dart';
import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/core/styling/app_color.dart';
import 'package:expense_master/features/auth/logic/cubit_auth_listen/auth_listen_cubit.dart';
import 'package:expense_master/features/auth/logic/cubit_create_user/create_user_cubit.dart';
import 'package:expense_master/features/auth/logic/cubit_sign_in_google/google_sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseMasterApp extends StatelessWidget {
  const ExpenseMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<GoogleSignInCubit>()..reloadCurrentUser(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthListenCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<CreateUserCubit>(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColor.scaffold,
          ),
          initialRoute: NameRouter.onbordingView,
          onGenerateRoute: AppRouter.onGenerateRoute,
        ),
      ),
    );
  }
}
