part of 'create_user_cubit.dart';

@freezed
class CreateUserState<T> with _$CreateUserState<T> {
  const factory CreateUserState.initial() = _Initial;

  const factory CreateUserState.createUserLoading() = CreateUserLoading;
  const factory CreateUserState.createUserSuccess() = CreateUserSuccess<T>;
  const factory CreateUserState.createUserFailure({required String? error}) =
      CreateUserFailure;
}
