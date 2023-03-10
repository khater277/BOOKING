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
    apiKey: 'AIzaSyAoUsJxXfc45iUDv1y59_tZbQ-aO7etSr8',
    appId: '1:525564821315:web:b536ba749f1e19084e39f6',
    messagingSenderId: '525564821315',
    projectId: 'booking-b6bab',
    authDomain: 'booking-b6bab.firebaseapp.com',
    storageBucket: 'booking-b6bab.appspot.com',
    measurementId: 'G-C7GX53S3QT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZfFYHjNyLFBHf6nHJ277J0lWi05o8mTI',
    appId: '1:525564821315:android:c60509e7a8abdf774e39f6',
    messagingSenderId: '525564821315',
    projectId: 'booking-b6bab',
    storageBucket: 'booking-b6bab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvXCHR67m-O4fkCq7Hrq9rdg_XlVmLlAo',
    appId: '1:525564821315:ios:ecd80d0a89756be94e39f6',
    messagingSenderId: '525564821315',
    projectId: 'booking-b6bab',
    storageBucket: 'booking-b6bab.appspot.com',
    iosClientId:
        '525564821315-2veqpvom3srs1197lrtthq8na44jblu3.apps.googleusercontent.com',
    iosBundleId: 'com.example.booking',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvXCHR67m-O4fkCq7Hrq9rdg_XlVmLlAo',
    appId: '1:525564821315:ios:ecd80d0a89756be94e39f6',
    messagingSenderId: '525564821315',
    projectId: 'booking-b6bab',
    storageBucket: 'booking-b6bab.appspot.com',
    iosClientId:
        '525564821315-2veqpvom3srs1197lrtthq8na44jblu3.apps.googleusercontent.com',
    iosBundleId: 'com.example.booking',
  );
}
