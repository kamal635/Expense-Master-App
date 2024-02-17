import 'package:expense_master/core/routing/method_pages.dart';
import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/features/auth/logic/cubit_auth_listen/auth_listen_cubit.dart';
import 'package:expense_master/features/home/view/home_view.dart';
import 'package:expense_master/features/onboarding/view/onboarding_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // pass arguments by this
    final argument = settings.arguments;

    switch (settings.name) {
      // ======================= OnBording View =======================
      case NameRouter.onboardingView:
        return MaterialPageRoute(
          builder: (context) => BlocBuilder<AuthListenCubit, AuthListenState>(
            builder: (context, state) {
              if (state is Authenticated) {
                return currentPage(page: const HomeView());
              } else {
                return currentPage(page: const OnBoardingView());
              }
            },
          ),
        );
      //======================= Home View =======================
      case NameRouter.homeView:
        return MaterialPageRoute(
          builder: (context) => currentPage(page: const HomeView()),
        );

      // if Router does not exist show this text
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
