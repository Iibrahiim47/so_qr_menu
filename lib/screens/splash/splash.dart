import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_qr_menu/controller/get_category_controller/get_category_controller.dart';
import 'package:so_qr_menu/screens/loginScreen/loginScreen.dart';
import 'package:so_qr_menu/theme/admin_theme.dart';

class SplashScreen extends StatefulWidget {
  // static const routeName = "splash-screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Get.put(CategoryController());
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
    CategoryController.to.getCatagoriesList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: SoMenuTheme.bgcolor,
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.2,
              width: width * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/logo.png',
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.2,
              width: width * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'images/icon.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
