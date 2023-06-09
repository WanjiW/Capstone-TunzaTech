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
    apiKey: 'AIzaSyAzNiHMgjA5Akdjq1-yoT7_kMHYt8HGry0',
    appId: '1:41907910235:web:6a6657a67eeec2d203b17e',
    messagingSenderId: '41907910235',
    projectId: 'capstone-tunzatech',
    authDomain: 'capstone-tunzatech.firebaseapp.com',
    storageBucket: 'capstone-tunzatech.appspot.com',
    measurementId: 'G-CHKZ4RJK7Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUX8clvSX58Pn4kTHjKcQojg1rKyCO38o',
    appId: '1:41907910235:android:afd4398bd165cebb03b17e',
    messagingSenderId: '41907910235',
    projectId: 'capstone-tunzatech',
    storageBucket: 'capstone-tunzatech.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbio8tZ16A2sWI5G3YHDrlemFqQxiZ0j0',
    appId: '1:41907910235:ios:072bc547976c610d03b17e',
    messagingSenderId: '41907910235',
    projectId: 'capstone-tunzatech',
    storageBucket: 'capstone-tunzatech.appspot.com',
    iosClientId: '41907910235-0ibs9mkbk6mobfupq45lmvjopfmstsg8.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbio8tZ16A2sWI5G3YHDrlemFqQxiZ0j0',
    appId: '1:41907910235:ios:072bc547976c610d03b17e',
    messagingSenderId: '41907910235',
    projectId: 'capstone-tunzatech',
    storageBucket: 'capstone-tunzatech.appspot.com',
    iosClientId: '41907910235-0ibs9mkbk6mobfupq45lmvjopfmstsg8.apps.googleusercontent.com',
    iosBundleId: 'com.example.practiceProject',
  );
}
