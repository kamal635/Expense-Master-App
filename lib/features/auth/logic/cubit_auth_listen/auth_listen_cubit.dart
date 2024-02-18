import 'dart:async';

import 'package:expense_master/features/auth/data/repository/auth_listen_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_listen_state.dart';
part 'auth_listen_cubit.freezed.dart';

class AuthListenCubit extends Cubit<AuthListenState> {
  final AuthListenRepoImpl _authListenRepoImpl;
  StreamSubscription<User?>? _streamSubscription;

  AuthListenCubit(this._authListenRepoImpl)
      : super(const AuthListenState.initial()) {
    //listen user and excute method (emitAuthListenStates)
    _streamSubscription =
        _authListenRepoImpl.authStateChanges().listen((user) async {
      if (kDebugMode) {
        print("@@this user info :$user @@");
      }

      emitAuthListenStates(user);
    });
  }

  void emitAuthListenStates(User? user) {
    if (user != null) {
      emit(const AuthListenState.authenticated());
    } else {
      emit(const AuthListenState.unAuthenticated());
    }
  }

  Future<void> onClose() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
