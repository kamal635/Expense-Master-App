part of 'google_sign_in_cubit.dart';

@freezed
class GoogleSignInState<T> with _$GoogleSignInState<T> {
  const factory GoogleSignInState.initial() = _Initial;

  const factory GoogleSignInState.signInLoading() = SignInLoading;
  const factory GoogleSignInState.signInSuccess(
      UserCredential? userCredential) = SignInSuccess<T>;
  const factory GoogleSignInState.signInFailure({required String? error}) =
      SignInFailure;
}
