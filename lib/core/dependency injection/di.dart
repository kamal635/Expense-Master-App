import 'package:expense_master/features/onbording/data/local_data_source.dart/keep_user_sign_in.dart';
import 'package:expense_master/features/onbording/data/repository/google_signin_repo_impl.dart';
import 'package:expense_master/features/onbording/logic/cubit/google_sign_in_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Google Sign in Repository
  getIt.registerLazySingleton<GoogleSignInRepoImpl>(
      () => GoogleSignInRepoImpl());

//Google Sign in: Keep user sign in
  getIt.registerLazySingleton<KeepUserSignInImpl>(() => KeepUserSignInImpl());

  // Login with Google Sign in
  getIt.registerFactory<GoogleSignInCubit>(
      () => GoogleSignInCubit(getIt(), getIt()));
}
