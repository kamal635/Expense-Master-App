import 'dart:async';

import 'package:expense_master/features/auth/data/local_data_source.dart/keep_user_sign_in.dart';
import 'package:expense_master/features/auth/data/repository/google_signin_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'google_sign_in_state.dart';
part 'google_sign_in_cubit.freezed.dart';

class GoogleSignInCubit extends Cubit<GoogleSignInState> {
  final GoogleSignInRepoImpl _signInRepoImpl;
  final KeepUserSignInImpl _keepUserSignInImpl;
  StreamSubscription? streamSubscription;

  GoogleSignInCubit(this._signInRepoImpl, this._keepUserSignInImpl)
      : super(const GoogleSignInState.initial()) {
    streamSubscription = _signInRepoImpl.authStateChanges().listen((user) {
      print("@@@This User Info From Firebase:$user @@@");

      if (user?.uid != getUserIdFromLocal()) {
        _keepUserSignInImpl.removeUserId(userId: user?.uid);
      }
    });
  }

  Future<void> emitSignInStates() async {
    emit(const GoogleSignInState.signInLoading());

    final response = await _signInRepoImpl.signInWithGoogle();

    response.fold(
        (error) => emit(GoogleSignInState.signInFailure(error: error.message)),
        (userCredential) async {
      final useId = userCredential?.user?.uid;
      //this method to add idUser in local storage by Hive
      await _keepUserSignInImpl.addUserId(userId: useId ?? "");

      return emit(GoogleSignInState.signInSuccess(userCredential));
    });
  }

  // this method to return userId to use this in file routing to show
  // onbording view or home view
  String getUserIdFromLocal() {
    return _keepUserSignInImpl.getUserId();
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();
    return super.close();
  }
}
