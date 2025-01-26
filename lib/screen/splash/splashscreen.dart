import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';
import 'package:instagram/screen/login/loginscreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay the navigation by 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()), // Navigate to LoginScreen
      );
    });

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomImage(imagePath: "instagram_log.png"),
          SizedBox(height: 20),
          UiHelper.CustomImage(imagePath: "instagram_txt.png"),
        ],
      ),
    );
  }
}
