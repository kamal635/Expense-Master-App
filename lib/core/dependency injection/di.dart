import 'package:expense_master/features/auth/data/repository/auth_listen_repo.dart';
import 'package:expense_master/features/auth/data/repository/create_user_repo.dart';
import 'package:expense_master/features/auth/logic/cubit_auth_listen/auth_listen_cubit.dart';
import 'package:expense_master/features/auth/logic/cubit_create_user/create_user_cubit.dart';
import 'package:expense_master/features/auth/logic/cubit_sign_in_google/google_sign_in_cubit.dart';
import 'package:expense_master/features/auth/data/repository/google_signin_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //============> Repository :
  getIt.registerLazySingleton<GoogleSignInRepoImpl>(
    () => GoogleSignInRepoImpl(),
  );

  getIt.registerLazySingleton<AuthListenRepoImpl>(
    () => AuthListenRepoImpl(),
  );
  getIt.registerLazySingleton<CreateUserRepoImpl>(
    () => CreateUserRepoImpl(),
  );

  //============> Cubit :
  getIt.registerLazySingleton<GoogleSignInCubit>(
    () => GoogleSignInCubit(getIt()),
  );

  getIt.registerSingleton<AuthListenCubit>(
    AuthListenCubit(getIt()),
  );

  getIt.registerSingleton<CreateUserCubit>(
    CreateUserCubit(getIt()),
  );
}
