// ignore_for_file: file_names, deprecated_member_use, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:so_qr_menu/screens/homescreen/home_screen.dart';
import 'package:so_qr_menu/screens/reviews_page/review.dart';
import 'package:so_qr_menu/theme/admin_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  // static const routeName = "login-screen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loadData = false;

///////instagram link//////////////////////
  String instaurl = 'https://instagram.com/so.khor?igshid=OGQ2MjdiOTE=';

  Future<void> instaapp(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //////////google reviews///////////////
  String googlemapreviewslink = 'https://g.page/r/CcTZVdHELwILEAI/review ';

  Future<void> reviewslink(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: SoMenuTheme.primarycolor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: SoMenuTheme.bgcolor,
              // color: Color(0xffE64692),

              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: AssetImage(
              //     'images/background.jpeg',
              //   ),
              // ),
            ),
            height: height,
            width: width,
          ),
          SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding: EdgeInsets.only(
                left: width * 0.04,
                right: width * 0.04,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Card(
                      elevation: 10,
                      shape: const CircleBorder(),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReviesPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color: const Color(0xff9BAD87),
                            color: SoMenuTheme.primarycolor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: height * 0.04,
                          width: width * 0.08,
                          child: Icon(
                            Icons.sentiment_satisfied_outlined,
                            color: SoMenuTheme.bgcolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.08,
                  ),
                  SizedBox(
                    height: height * 0.22,
                    width: width * 0.4,
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.2,
                          width: width * 0.2,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'images/logo.png',
                          ),
                        ),
                        Container(
                          height: height * 0.2,
                          width: width * 0.2,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'images/icon.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    height: height * 0.05,
                    width: width * 0.4,
                    child: Center(
                      child: Text(
                        'So Cafe',
                        style: TextStyle(
                          color: SoMenuTheme.primarycolor,
                          fontSize: width * 0.035,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                    width: width * 0.4,
                    child: Center(
                      child: Text(
                        'Value * View * Victory ',
                        style: TextStyle(
                          color: SoMenuTheme.primarycolor,
                          fontSize: width * 0.02,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      // setState(() {
                      //   loadData = true;
                      // });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.34,
                      decoration: BoxDecoration(
                        color: SoMenuTheme.primarycolor,
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Menu',
                          style: TextStyle(
                            color: SoMenuTheme.bgcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.035,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      instaapp(instaurl);
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        color: SoMenuTheme.primarycolor,
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Instagram',
                          style: TextStyle(
                            color: SoMenuTheme.bgcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.035,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      reviewslink(googlemapreviewslink);
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        color: SoMenuTheme.primarycolor,
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                            color: SoMenuTheme.bgcolor,
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.035,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // loadData == true
          //     ? Container(
          //         height: height,
          //         width: width,
          //         color: const Color(0xffE64692).withOpacity(0.3),
          //         // color: Colors.blue,
          //         child: SpinKit.loadSpinKit,
          //       )
          //     : Container()
        ],
      ),
    );
  }
}
