import 'package:expense_master/core/Strings/app_hive.dart';
import 'package:hive/hive.dart';

abstract class KeepUserSignIn {
  Future<void> addUserId({required String userId});
  String getUserId();
}

class KeepUserSignInImpl implements KeepUserSignIn {
  @override
  Future<void> addUserId({required String userId}) async {
    await Hive.box(AppHive.googleSignInBox).put("id", userId);
  }

  @override
  String getUserId() {
    return Hive.box(AppHive.googleSignInBox).get("id") ?? "";
  }
}
