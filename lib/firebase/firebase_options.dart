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
    apiKey: 'AIzaSyB-0gEaL1R2C6q5duHRmk0qMWCDidwgf1U',
    appId: '1:53697289764:web:3924c8cabb57dd37a682b1',
    messagingSenderId: '53697289764',
    projectId: 'stream-project-32b66',
    authDomain: 'stream-project-32b66.firebaseapp.com',
    storageBucket: 'stream-project-32b66.appspot.com',
    measurementId: 'G-NH4WT1LVX0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACHRoUsLOyFLZXy11a1kGh-HaQ1-2jtHk',
    appId: '1:53697289764:android:f95428aa5f274baea682b1',
    messagingSenderId: '53697289764',
    projectId: 'stream-project-32b66',
    storageBucket: 'stream-project-32b66.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBaVBQxMr5QdXs-_hv6gikH-92OnDzwqXU',
    appId: '1:53697289764:ios:aaecdb798d17fadca682b1',
    messagingSenderId: '53697289764',
    projectId: 'stream-project-32b66',
    storageBucket: 'stream-project-32b66.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBaVBQxMr5QdXs-_hv6gikH-92OnDzwqXU',
    appId: '1:53697289764:ios:4ca266339d8ca074a682b1',
    messagingSenderId: '53697289764',
    projectId: 'stream-project-32b66',
    storageBucket: 'stream-project-32b66.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
