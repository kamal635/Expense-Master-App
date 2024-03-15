import 'package:expense_master/core/helper/alert_dialgo.dart';
import 'package:expense_master/features/auth/logic/cubit_create_user/create_user_cubit.dart';
import 'package:expense_master/features/auth/logic/cubit_sign_in_google/google_sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String?
    _lastErrorMessage; // this to display one error message if error duplicate

// I do this method to check on all pages,
// if any error occurs, it will appear to the user
Widget currentPage({required Widget page}) {
  return BlocListener<GoogleSignInCubit, GoogleSignInState>(
    listener: (context, state) {
      if (state is SignInFailure) {
        _lastErrorMessage = state.error;

        dialogError(
          context: context,
          error: state.error,
        );
      }
    },
    child: BlocListener<CreateUserCubit, CreateUserState>(
      listener: (context, state) {
        if (state is CreateUserFailure && state.error != _lastErrorMessage) {
          _lastErrorMessage = state.error;

          dialogError(
            context: context,
            error: state.error,
          );
        }
      },
      child: page,
    ),
  );
}
