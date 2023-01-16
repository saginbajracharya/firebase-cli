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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBBzW1dRwx5sBCOLozccZtMqzApAiDGa5w',
    appId: '1:680492665951:web:82f4260babff0f297c9fea',
    messagingSenderId: '680492665951',
    projectId: 'fir-cli-setup',
    authDomain: 'fir-cli-setup.firebaseapp.com',
    storageBucket: 'fir-cli-setup.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDs4HTA7ci9ZifecDQC_Kwx_w3oEA1geRc',
    appId: '1:680492665951:android:df6827d1993ef07a7c9fea',
    messagingSenderId: '680492665951',
    projectId: 'fir-cli-setup',
    storageBucket: 'fir-cli-setup.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvGTtix1uMKkugZJPLDfVmwiTb7yyD-_k',
    appId: '1:680492665951:ios:560a3c717d0b9e417c9fea',
    messagingSenderId: '680492665951',
    projectId: 'fir-cli-setup',
    storageBucket: 'fir-cli-setup.appspot.com',
    iosClientId: '680492665951-m0tku692ncf977m7u2r95e3m6sdotf69.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseCliSetup',
  );
}