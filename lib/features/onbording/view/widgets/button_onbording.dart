import 'package:expense_master/core/Strings/app_strings.dart';
import 'package:expense_master/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ButtonOnBordingView extends StatelessWidget {
  const ButtonOnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      titleWithImage: true,
      title: AppString.continueGoogle,
      onPressed: () async {
        await signInWithGoogle();
      },
    );
  }
}

Future<UserCredential?> signInWithGoogle() async {
  try {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (kDebugMode) {
      print("@@googleUser: $googleUser");
    }
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    if (kDebugMode) {
      print("@@googleAuth: $googleAuth");
    }
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    if (kDebugMode) {
      print("@@credential: $credential");
      print("@@accessToken: ${googleAuth?.accessToken}");
      print("@@idToken: ${googleAuth?.idToken}");
    }
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on FirebaseAuthException catch (e) {
    if (kDebugMode) {
      print("@@FirebaseAuthException: $e");
    }
  } on FirebaseException catch (e) {
    if (kDebugMode) {
      print("@@FirebaseException: $e");
    }
  } on PlatformException catch (e) {
    if (kDebugMode) {
      print("@@PlatformException: $e");
    }
  }
  return null;
}
