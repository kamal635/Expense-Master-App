import 'package:expense_master/core/dependency%20injection/di.dart';
import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/features/onBording/view/onBording_view.dart';
import 'package:expense_master/features/onbording/logic/cubit/google_sign_in_cubit.dart';
import 'package:expense_master/features/onbording/view/widgets/button_onbording.dart';
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
          builder: (context) => BlocProvider(
            create: (context) => getIt<GoogleSignInCubit>(),
            child: BlocBuilder<GoogleSignInCubit, GoogleSignInState>(
              builder: (context, state) {
                // get userId and Check (if empty => OnBording View else => Home View )
                final userId = context.read<GoogleSignInCubit>().getUserId();
                return userId.isEmpty
                    ? const OnBordingView()
                    : const HomeView();
              },
            ),
          ),
        );
      //======================= Home View =======================
      case NameRouter.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
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
