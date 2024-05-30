import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:so_qr_menu/screens/splash/splash.dart';

void main() async {
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
      // routes: {
      //   SplashScreen.routeName: (context) => const SplashScreen(),
      //   LoginScreen.routeName: (context) => const LoginScreen(),
      //   HomePage.routeName: (context) => const HomePage(),
      //   //   DetailPage.routeName:(context) => DetailPage(),
      // },
      initialRoute: "splash-screen",
      title: 'Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
