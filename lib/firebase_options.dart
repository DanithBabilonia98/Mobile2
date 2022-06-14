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
    apiKey: 'AIzaSyAEChi7aDh6UA3LvfD-nwD7ihX6brIW3ps',
    appId: '1:424611347541:web:280f6d089d086b791f68dc',
    messagingSenderId: '424611347541',
    projectId: 'flutterapp-6cc7c',
    authDomain: 'flutterapp-6cc7c.firebaseapp.com',
    databaseURL: 'https://flutterapp-6cc7c-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-6cc7c.appspot.com',
    measurementId: 'G-XJX3QMZJJ0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMOXAKn-yPKh3xxq3xWoepOYHiWAIL80o',
    appId: '1:424611347541:android:a735687e0839f32d1f68dc',
    messagingSenderId: '424611347541',
    projectId: 'flutterapp-6cc7c',
    databaseURL: 'https://flutterapp-6cc7c-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-6cc7c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8f7mu94Ye-s_CKl2yzrGkM3GRoGMcfUM',
    appId: '1:424611347541:ios:40d2ab9b297ed3671f68dc',
    messagingSenderId: '424611347541',
    projectId: 'flutterapp-6cc7c',
    databaseURL: 'https://flutterapp-6cc7c-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-6cc7c.appspot.com',
    iosClientId: '424611347541-ukr43fjqkh7j9nvhd3ja43d08opee3kc.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8f7mu94Ye-s_CKl2yzrGkM3GRoGMcfUM',
    appId: '1:424611347541:ios:40d2ab9b297ed3671f68dc',
    messagingSenderId: '424611347541',
    projectId: 'flutterapp-6cc7c',
    databaseURL: 'https://flutterapp-6cc7c-default-rtdb.firebaseio.com',
    storageBucket: 'flutterapp-6cc7c.appspot.com',
    iosClientId: '424611347541-ukr43fjqkh7j9nvhd3ja43d08opee3kc.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}