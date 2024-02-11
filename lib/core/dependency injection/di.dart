import 'package:expense_master/features/onbording/data/repository/google_signin_repo_impl.dart';
import 'package:expense_master/features/onbording/logic/cubit/google_sign_in_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Google Sign in Repository
  getIt.registerLazySingleton<GoogleSignInRepoImpl>(
      () => GoogleSignInRepoImpl());

  // Login with Google Sign in
  getIt.registerFactory<GoogleSignInCubit>(() => GoogleSignInCubit(getIt()));
}
