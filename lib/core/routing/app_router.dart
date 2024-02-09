import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/features/onBording/view/onBording_view.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    // pass arguments by this
    final argument = settings.arguments;

    switch (settings.name) {
      // OnBording View
      case NameRouter.onBordingView:
        return MaterialPageRoute(builder: (_) => const OnBordingView());

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
