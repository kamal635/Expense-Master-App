import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/helper/alert_dialgo.dart';
import 'package:expense_master/core/helper/extensions.dart';
import 'package:expense_master/core/routing/name_router.dart';
import 'package:expense_master/core/widgets/app_button.dart';
import 'package:expense_master/features/auth/logic/cubit_sign_in_google/google_sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonOnBordingView extends StatelessWidget {
  const ButtonOnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoogleSignInCubit, GoogleSignInState>(
        listenWhen: (previous, current) =>
            current is SignInLoading ||
            current is SignInSuccess ||
            current is SignInFailure,
        listener: (context, state) {
          state.whenOrNull(
              signInFailure: (error) =>
                  dialogError(context: context, error: error),
              signInSuccess: (userCredential) {
                return context.pushReplacementNamed(NameRouter.homeView);
              });
        },
        builder: (context, state) {
          final lodaingState = state is SignInLoading;
          return AppButton(
            titleWithImage: lodaingState ? false : true,
            //when state is loading switch "continue with google" to "Loading..."
            title: lodaingState ? AppString.loading : AppString.continueGoogle,
            onPressed: () async {
              await context.read<GoogleSignInCubit>().emitSignInStates();
            },
          );
        });
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Home View"),
    ));
  }
}
