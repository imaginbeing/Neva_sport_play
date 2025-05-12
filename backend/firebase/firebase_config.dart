import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBImxcSBYF9lB2ruN3FvwachaM4PKa3dkg",
            authDomain: "neva-sport-firebase-m5k9cq.firebaseapp.com",
            projectId: "neva-sport-firebase-m5k9cq",
            storageBucket: "neva-sport-firebase-m5k9cq.appspot.com",
            messagingSenderId: "837947947550",
            appId: "1:837947947550:web:8b0d86fbd15f80eb014c0f"));
  } else {
    await Firebase.initializeApp();
  }
}
