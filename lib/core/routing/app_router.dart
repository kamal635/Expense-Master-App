import 'package:expense_master/core/routing/method_pages.dart';
import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/features/auth/logic/cubit_auth_listen/auth_listen_cubit.dart';
import 'package:expense_master/features/onBording/view/onBording_view.dart';
import 'package:expense_master/features/onbording/widgets/button_onbording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // pass arguments by this
    final argument = settings.arguments;

    switch (settings.name) {
      // ======================= OnBording View =======================
      case NameRouter.onbordingView:
        return MaterialPageRoute(
          builder: (context) => BlocBuilder<AuthListenCubit, AuthListenState>(
            builder: (context, state) {
              if (state is Authenticated) {
                return const HomeView();
              } else {
                return const OnBordingView();
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
