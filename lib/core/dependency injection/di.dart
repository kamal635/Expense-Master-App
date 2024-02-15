import 'package:expense_master/features/auth/data/repository/auth_listen_repo.dart';
import 'package:expense_master/features/auth/logic/cubit_auth_listen/auth_listen_cubit.dart';
import 'package:expense_master/features/auth/logic/cubit_sign_in_google/google_sign_in_cubit.dart';
import 'package:expense_master/features/auth/data/repository/google_signin_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Google Sign in Repository
  getIt.registerLazySingleton<GoogleSignInRepoImpl>(
      () => GoogleSignInRepoImpl());

  getIt.registerLazySingleton<AuthListenRepoImpl>(() => AuthListenRepoImpl());

  // Login with Google Sign in
  getIt.registerLazySingleton<GoogleSignInCubit>(
      () => GoogleSignInCubit(getIt()));

  getIt.registerSingleton<AuthListenCubit>(AuthListenCubit(getIt()));
}
