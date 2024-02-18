// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleSignInState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInLoading,
    required TResult Function(UserCredential? userCredential) signInSuccess,
    required TResult Function(String? error) signInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInLoading,
    TResult? Function(UserCredential? userCredential)? signInSuccess,
    TResult? Function(String? error)? signInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInLoading,
    TResult Function(UserCredential? userCredential)? signInSuccess,
    TResult Function(String? error)? signInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) signInLoading,
    required TResult Function(SignInSuccess<T> value) signInSuccess,
    required TResult Function(SignInFailure<T> value) signInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? signInLoading,
    TResult? Function(SignInSuccess<T> value)? signInSuccess,
    TResult? Function(SignInFailure<T> value)? signInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? signInLoading,
    TResult Function(SignInSuccess<T> value)? signInSuccess,
    TResult Function(SignInFailure<T> value)? signInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInStateCopyWith<T, $Res> {
  factory $GoogleSignInStateCopyWith(GoogleSignInState<T> value,
          $Res Function(GoogleSignInState<T>) then) =
      _$GoogleSignInStateCopyWithImpl<T, $Res, GoogleSignInState<T>>;
}

/// @nodoc
class _$GoogleSignInStateCopyWithImpl<T, $Res,
        $Val extends GoogleSignInState<T>>
    implements $GoogleSignInStateCopyWith<T, $Res> {
  _$GoogleSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$GoogleSignInStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GoogleSignInState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInLoading,
    required TResult Function(UserCredential? userCredential) signInSuccess,
    required TResult Function(String? error) signInFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInLoading,
    TResult? Function(UserCredential? userCredential)? signInSuccess,
    TResult? Function(String? error)? signInFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInLoading,
    TResult Function(UserCredential? userCredential)? signInSuccess,
    TResult Function(String? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) signInLoading,
    required TResult Function(SignInSuccess<T> value) signInSuccess,
    required TResult Function(SignInFailure<T> value) signInFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? signInLoading,
    TResult? Function(SignInSuccess<T> value)? signInSuccess,
    TResult? Function(SignInFailure<T> value)? signInFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? signInLoading,
    TResult Function(SignInSuccess<T> value)? signInSuccess,
    TResult Function(SignInFailure<T> value)? signInFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements GoogleSignInState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignInLoadingImplCopyWith<T, $Res> {
  factory _$$SignInLoadingImplCopyWith(_$SignInLoadingImpl<T> value,
          $Res Function(_$SignInLoadingImpl<T>) then) =
      __$$SignInLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignInLoadingImplCopyWithImpl<T, $Res>
    extends _$GoogleSignInStateCopyWithImpl<T, $Res, _$SignInLoadingImpl<T>>
    implements _$$SignInLoadingImplCopyWith<T, $Res> {
  __$$SignInLoadingImplCopyWithImpl(_$SignInLoadingImpl<T> _value,
      $Res Function(_$SignInLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInLoadingImpl<T> implements SignInLoading<T> {
  const _$SignInLoadingImpl();

  @override
  String toString() {
    return 'GoogleSignInState<$T>.signInLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInLoading,
    required TResult Function(UserCredential? userCredential) signInSuccess,
    required TResult Function(String? error) signInFailure,
  }) {
    return signInLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInLoading,
    TResult? Function(UserCredential? userCredential)? signInSuccess,
    TResult? Function(String? error)? signInFailure,
  }) {
    return signInLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInLoading,
    TResult Function(UserCredential? userCredential)? signInSuccess,
    TResult Function(String? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInLoading != null) {
      return signInLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) signInLoading,
    required TResult Function(SignInSuccess<T> value) signInSuccess,
    required TResult Function(SignInFailure<T> value) signInFailure,
  }) {
    return signInLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? signInLoading,
    TResult? Function(SignInSuccess<T> value)? signInSuccess,
    TResult? Function(SignInFailure<T> value)? signInFailure,
  }) {
    return signInLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? signInLoading,
    TResult Function(SignInSuccess<T> value)? signInSuccess,
    TResult Function(SignInFailure<T> value)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInLoading != null) {
      return signInLoading(this);
    }
    return orElse();
  }
}

abstract class SignInLoading<T> implements GoogleSignInState<T> {
  const factory SignInLoading() = _$SignInLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<T, $Res> {
  factory _$$SignInSuccessImplCopyWith(_$SignInSuccessImpl<T> value,
          $Res Function(_$SignInSuccessImpl<T>) then) =
      __$$SignInSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({UserCredential? userCredential});
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<T, $Res>
    extends _$GoogleSignInStateCopyWithImpl<T, $Res, _$SignInSuccessImpl<T>>
    implements _$$SignInSuccessImplCopyWith<T, $Res> {
  __$$SignInSuccessImplCopyWithImpl(_$SignInSuccessImpl<T> _value,
      $Res Function(_$SignInSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCredential = freezed,
  }) {
    return _then(_$SignInSuccessImpl<T>(
      freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
    ));
  }
}

/// @nodoc

class _$SignInSuccessImpl<T> implements SignInSuccess<T> {
  const _$SignInSuccessImpl(this.userCredential);

  @override
  final UserCredential? userCredential;

  @override
  String toString() {
    return 'GoogleSignInState<$T>.signInSuccess(userCredential: $userCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessImpl<T> &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessImplCopyWith<T, _$SignInSuccessImpl<T>> get copyWith =>
      __$$SignInSuccessImplCopyWithImpl<T, _$SignInSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInLoading,
    required TResult Function(UserCredential? userCredential) signInSuccess,
    required TResult Function(String? error) signInFailure,
  }) {
    return signInSuccess(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInLoading,
    TResult? Function(UserCredential? userCredential)? signInSuccess,
    TResult? Function(String? error)? signInFailure,
  }) {
    return signInSuccess?.call(userCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInLoading,
    TResult Function(UserCredential? userCredential)? signInSuccess,
    TResult Function(String? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(userCredential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) signInLoading,
    required TResult Function(SignInSuccess<T> value) signInSuccess,
    required TResult Function(SignInFailure<T> value) signInFailure,
  }) {
    return signInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? signInLoading,
    TResult? Function(SignInSuccess<T> value)? signInSuccess,
    TResult? Function(SignInFailure<T> value)? signInFailure,
  }) {
    return signInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? signInLoading,
    TResult Function(SignInSuccess<T> value)? signInSuccess,
    TResult Function(SignInFailure<T> value)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInSuccess != null) {
      return signInSuccess(this);
    }
    return orElse();
  }
}

abstract class SignInSuccess<T> implements GoogleSignInState<T> {
  const factory SignInSuccess(final UserCredential? userCredential) =
      _$SignInSuccessImpl<T>;

  UserCredential? get userCredential;
  @JsonKey(ignore: true)
  _$$SignInSuccessImplCopyWith<T, _$SignInSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInFailureImplCopyWith<T, $Res> {
  factory _$$SignInFailureImplCopyWith(_$SignInFailureImpl<T> value,
          $Res Function(_$SignInFailureImpl<T>) then) =
      __$$SignInFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$SignInFailureImplCopyWithImpl<T, $Res>
    extends _$GoogleSignInStateCopyWithImpl<T, $Res, _$SignInFailureImpl<T>>
    implements _$$SignInFailureImplCopyWith<T, $Res> {
  __$$SignInFailureImplCopyWithImpl(_$SignInFailureImpl<T> _value,
      $Res Function(_$SignInFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$SignInFailureImpl<T>(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInFailureImpl<T> implements SignInFailure<T> {
  const _$SignInFailureImpl({required this.error});

  @override
  final String? error;

  @override
  String toString() {
    return 'GoogleSignInState<$T>.signInFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailureImplCopyWith<T, _$SignInFailureImpl<T>> get copyWith =>
      __$$SignInFailureImplCopyWithImpl<T, _$SignInFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signInLoading,
    required TResult Function(UserCredential? userCredential) signInSuccess,
    required TResult Function(String? error) signInFailure,
  }) {
    return signInFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signInLoading,
    TResult? Function(UserCredential? userCredential)? signInSuccess,
    TResult? Function(String? error)? signInFailure,
  }) {
    return signInFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signInLoading,
    TResult Function(UserCredential? userCredential)? signInSuccess,
    TResult Function(String? error)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignInLoading<T> value) signInLoading,
    required TResult Function(SignInSuccess<T> value) signInSuccess,
    required TResult Function(SignInFailure<T> value) signInFailure,
  }) {
    return signInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignInLoading<T> value)? signInLoading,
    TResult? Function(SignInSuccess<T> value)? signInSuccess,
    TResult? Function(SignInFailure<T> value)? signInFailure,
  }) {
    return signInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignInLoading<T> value)? signInLoading,
    TResult Function(SignInSuccess<T> value)? signInSuccess,
    TResult Function(SignInFailure<T> value)? signInFailure,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(this);
    }
    return orElse();
  }
}

abstract class SignInFailure<T> implements GoogleSignInState<T> {
  const factory SignInFailure({required final String? error}) =
      _$SignInFailureImpl<T>;

  String? get error;
  @JsonKey(ignore: true)
  _$$SignInFailureImplCopyWith<T, _$SignInFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
