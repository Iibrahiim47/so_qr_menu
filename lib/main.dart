import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:so_qr_menu/screens/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        //name: "com.example.ecommerece",
        options: const FirebaseOptions(
            apiKey: "AIzaSyC2P8gTioLT1t7HfLwbfSI1gCxGVyDXqus",
            authDomain: "new-menu-so.irebaseapp.com",
            projectId: "new-menu-so",
            storageBucket: "new-menu-so.appspot.com",
            messagingSenderId: "788014062610",
            appId: "1:788014062610:web:aea224081cb3ae1338cccb",
            measurementId: "G-FBFRMGY47K"));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
