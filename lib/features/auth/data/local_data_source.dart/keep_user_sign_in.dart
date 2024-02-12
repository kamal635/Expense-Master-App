import 'package:expense_master/core/Strings/app_hive.dart';
import 'package:hive/hive.dart';

abstract class KeepUserSignIn {
  Future<void> addUserId({required String userId});
  Future<void> removeUserId({required String? userId});
  String getUserId();
}

class KeepUserSignInImpl implements KeepUserSignIn {
  @override
  Future<void> addUserId({required String userId}) async {
    await Hive.box(AppHive.googleSignInBox).put("id", userId);
  }

  @override
  Future<void> removeUserId({required String? userId}) async {
    await Hive.box(AppHive.googleSignInBox).delete("id");
  }

  @override
  String getUserId() {
    return Hive.box(AppHive.googleSignInBox).get("id") ?? "";
  }
}
