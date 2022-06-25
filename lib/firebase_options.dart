// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA3zaW2t3mwMmS3TufMwVg9WvBh9hAKaAc',
    appId: '1:1043370142467:web:be778565e48894ad9b1736',
    messagingSenderId: '1043370142467',
    projectId: 'upcampus-c8a43',
    authDomain: 'upcampus-c8a43.firebaseapp.com',
    storageBucket: 'upcampus-c8a43.appspot.com',
    measurementId: 'G-N11EHPDZYG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCicZsrGqrO9RoBlJhtnRDJF9XKVJB-TeQ',
    appId: '1:1043370142467:android:0a3ccc1fc5baaa989b1736',
    messagingSenderId: '1043370142467',
    projectId: 'upcampus-c8a43',
    storageBucket: 'upcampus-c8a43.appspot.com',
  );
}
