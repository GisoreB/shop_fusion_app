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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCodRfuDW-SkMoC4_tTL7vbjIoNzckdzDw',
    appId: '1:305791430918:web:ace2b2c9c2b8bad771ae87',
    messagingSenderId: '305791430918',
    projectId: 'shop-fusion-app',
    authDomain: 'shop-fusion-app.firebaseapp.com',
    storageBucket: 'shop-fusion-app.appspot.com',
    measurementId: 'G-CPX8531PX6',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCodRfuDW-SkMoC4_tTL7vbjIoNzckdzDw',
    appId: '1:305791430918:web:fee416a8745eb4b871ae87',
    messagingSenderId: '305791430918',
    projectId: 'shop-fusion-app',
    authDomain: 'shop-fusion-app.firebaseapp.com',
    storageBucket: 'shop-fusion-app.appspot.com',
    measurementId: 'G-DK2XT52SNF',
  );
}
