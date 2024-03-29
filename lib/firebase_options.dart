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
    apiKey: 'AIzaSyC31R_tOMVQN35OBVysV661wkX8dUYx9xI',
    appId: '1:970745202114:web:8f982d4ace11f2c548425b',
    messagingSenderId: '970745202114',
    projectId: 'food-delivery-app-ddca0',
    authDomain: 'food-delivery-app-ddca0.firebaseapp.com',
    storageBucket: 'food-delivery-app-ddca0.appspot.com',
    measurementId: 'G-PY8LE4884X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuVLAyMKEoXSDUYMA_FdKyXgqIswigqCQ',
    appId: '1:970745202114:android:fde4e7d89db5252b48425b',
    messagingSenderId: '970745202114',
    projectId: 'food-delivery-app-ddca0',
    storageBucket: 'food-delivery-app-ddca0.appspot.com',
  );
}
