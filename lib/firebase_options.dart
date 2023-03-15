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
    apiKey: 'AIzaSyBTiNctnUVvlhWtIyaRmEmr3EwKcFt5Fvw',
    appId: '1:850196334357:web:a97f405cbd312e1c5e4b1c',
    messagingSenderId: '850196334357',
    projectId: 'zarityhealthassignment',
    authDomain: 'zarityhealthassignment.firebaseapp.com',
    storageBucket: 'zarityhealthassignment.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuZnrHZR0exwgydPBXv-Suw_mqUOcwQEI',
    appId: '1:850196334357:android:fa595dc7526066955e4b1c',
    messagingSenderId: '850196334357',
    projectId: 'zarityhealthassignment',
    storageBucket: 'zarityhealthassignment.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBN5B7E3svQu02UDT4RiItawWhcrb_fC10',
    appId: '1:850196334357:ios:ca4a7ece91bbb9375e4b1c',
    messagingSenderId: '850196334357',
    projectId: 'zarityhealthassignment',
    storageBucket: 'zarityhealthassignment.appspot.com',
    iosClientId: '850196334357-hdt3for6a9ghjq5j9ilqhickeiic39nn.apps.googleusercontent.com',
    iosBundleId: 'com.example.zarityHealthAssignment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBN5B7E3svQu02UDT4RiItawWhcrb_fC10',
    appId: '1:850196334357:ios:ca4a7ece91bbb9375e4b1c',
    messagingSenderId: '850196334357',
    projectId: 'zarityhealthassignment',
    storageBucket: 'zarityhealthassignment.appspot.com',
    iosClientId: '850196334357-hdt3for6a9ghjq5j9ilqhickeiic39nn.apps.googleusercontent.com',
    iosBundleId: 'com.example.zarityHealthAssignment',
  );
}