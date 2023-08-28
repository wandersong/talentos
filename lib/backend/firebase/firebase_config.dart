import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAEjhL5FD7oWBvy566K6ilAk3vUl6EtdE4",
            authDomain: "ct-jobsv2.firebaseapp.com",
            projectId: "ct-jobsv2",
            storageBucket: "ct-jobsv2.appspot.com",
            messagingSenderId: "52671098525",
            appId: "1:52671098525:web:002d45f3429880f067ae74"));
  } else {
    await Firebase.initializeApp();
  }
}
