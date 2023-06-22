import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_qr_menu/screens/loginScreen/loginScreen.dart';
import 'package:so_qr_menu/user_website.dart/controllers/user_home_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => const LoginScreen()));
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
    Get.put(UserHomeController());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
          ),
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'images/homebg.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
