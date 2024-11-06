import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      case TargetPlatform.windows:
        return windows;
      default:
        throw UnsupportedError('This platform is not supported.');
    }
  }

  // Configuración para Android
  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'TU_API_KEY_ANDROID',
    appId: 'TU_APP_ID_ANDROID',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID_ANDROID',
    projectId: 'TU_PROJECT_ID',
    // Otros campos si es necesario
  );

  // Configuración para iOS
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'TU_API_KEY_IOS',
    appId: 'TU_APP_ID_IOS',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID_IOS',
    projectId: 'TU_PROJECT_ID',
    // Otros campos si es necesario
  );

  // Configuración para Web
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'TU_API_KEY_WEB',
    appId: 'TU_APP_ID_WEB',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID_WEB',
    projectId: 'TU_PROJECT_ID',
    // Otros campos si es necesario
  );

  // Configuración para Windows
  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'TU_API_KEY_WINDOWS',
    appId: 'TU_APP_ID_WINDOWS',
    messagingSenderId: 'TU_MESSAGING_SENDER_ID_WINDOWS',
    projectId: 'TU_PROJECT_ID',
    // Otros campos si es necesario
  );
}
