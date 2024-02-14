import 'package:expense_master/core/helper/alert_dialgo.dart';
import 'package:expense_master/features/auth/logic/cubit_sign_in_google/google_sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget currentPage({required Widget page}) {
  return BlocListener<GoogleSignInCubit, GoogleSignInState>(
    listener: (context, state) {
      state.whenOrNull(
        signInFailure: (error) => dialogError(
          context: context,
          error: error,
        ),
      );
    },
    child: page,
  );
}
