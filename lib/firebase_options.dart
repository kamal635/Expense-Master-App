// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB0-FtkuWyr9hV3z7_HZ61qhXdqtKwdYGE',
    appId: '1:600600299470:web:15cbf619dc15dd02554d9f',
    messagingSenderId: '600600299470',
    projectId: 'expensemaster-c337f',
    authDomain: 'expensemaster-c337f.firebaseapp.com',
    storageBucket: 'expensemaster-c337f.appspot.com',
    measurementId: 'G-25NVB8FDFT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCo9MmvKGwsFgaEME8soI4D2SmS57cLQ2E',
    appId: '1:600600299470:android:e6dfa98addd41264554d9f',
    messagingSenderId: '600600299470',
    projectId: 'expensemaster-c337f',
    storageBucket: 'expensemaster-c337f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-ydhLkzQM-FJId0I7O-NBfBl8QdYvUiE',
    appId: '1:600600299470:ios:90d424bdb276a2f2554d9f',
    messagingSenderId: '600600299470',
    projectId: 'expensemaster-c337f',
    storageBucket: 'expensemaster-c337f.appspot.com',
    iosClientId: '600600299470-srahb9i3sb7f3ppfmiicsp3dd85nntu3.apps.googleusercontent.com',
    iosBundleId: 'com.example.expenseMaster',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-ydhLkzQM-FJId0I7O-NBfBl8QdYvUiE',
    appId: '1:600600299470:ios:8219e2afca2683a7554d9f',
    messagingSenderId: '600600299470',
    projectId: 'expensemaster-c337f',
    storageBucket: 'expensemaster-c337f.appspot.com',
    iosClientId: '600600299470-jan9iodkb7kb0g7jj19tsgm6aupr058e.apps.googleusercontent.com',
    iosBundleId: 'com.example.expenseMaster.RunnerTests',
  );
}
