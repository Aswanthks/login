// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBVTsxhFnYv72ZImIW4b5gZydep-HWZ37o',
    appId: '1:723692071592:web:2c55d70fb3a2955b60f09d',
    messagingSenderId: '723692071592',
    projectId: 'dhanwisproject',
    authDomain: 'dhanwisproject.firebaseapp.com',
    storageBucket: 'dhanwisproject.appspot.com',
    measurementId: 'G-ZGP246SDWN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJfCYJoai3Cie_XfGY5BiHhAdtdWEoaOU',
    appId: '1:723692071592:android:194ef5f13f13a94760f09d',
    messagingSenderId: '723692071592',
    projectId: 'dhanwisproject',
    storageBucket: 'dhanwisproject.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAQROaNsnCbGjrNbcyMr6I2OS3RNcIZH4',
    appId: '1:723692071592:ios:73fda346484734d760f09d',
    messagingSenderId: '723692071592',
    projectId: 'dhanwisproject',
    storageBucket: 'dhanwisproject.appspot.com',
    iosBundleId: 'com.example.dhanwis',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAQROaNsnCbGjrNbcyMr6I2OS3RNcIZH4',
    appId: '1:723692071592:ios:73fda346484734d760f09d',
    messagingSenderId: '723692071592',
    projectId: 'dhanwisproject',
    storageBucket: 'dhanwisproject.appspot.com',
    iosBundleId: 'com.example.dhanwis',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBVTsxhFnYv72ZImIW4b5gZydep-HWZ37o',
    appId: '1:723692071592:web:862ce88c6ac2ff3f60f09d',
    messagingSenderId: '723692071592',
    projectId: 'dhanwisproject',
    authDomain: 'dhanwisproject.firebaseapp.com',
    storageBucket: 'dhanwisproject.appspot.com',
    measurementId: 'G-MC1CV2SG77',
  );
}
