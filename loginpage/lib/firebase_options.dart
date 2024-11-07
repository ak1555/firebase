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
    apiKey: 'AIzaSyATIGRdUTG_MosasbieDdZ-asnVTsIdinE',
    appId: '1:415293420276:web:bbf2fd6b9ca694005164a1',
    messagingSenderId: '415293420276',
    projectId: 'crudfirebase-669b0',
    authDomain: 'crudfirebase-669b0.firebaseapp.com',
    storageBucket: 'crudfirebase-669b0.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMGqgm3K1wzLGRQbOD26eF3bfvh3mrdoI',
    appId: '1:415293420276:android:370ec4d51f987cf65164a1',
    messagingSenderId: '415293420276',
    projectId: 'crudfirebase-669b0',
    storageBucket: 'crudfirebase-669b0.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyATIGRdUTG_MosasbieDdZ-asnVTsIdinE',
    appId: '1:415293420276:web:0fc5a23333a905a35164a1',
    messagingSenderId: '415293420276',
    projectId: 'crudfirebase-669b0',
    authDomain: 'crudfirebase-669b0.firebaseapp.com',
    storageBucket: 'crudfirebase-669b0.firebasestorage.app',
  );

}