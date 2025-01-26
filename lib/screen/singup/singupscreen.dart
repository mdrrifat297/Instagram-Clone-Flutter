import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';
import 'package:instagram/screen/login/loginscreen.dart';


class SingUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Instagram Text Image
            UiHelper.CustomImage(imagePath: "instagram_txt.png"),
            SizedBox(height: 20),

            // Username TextField
            UiHelper.CustomTextField(
              controller: TextEditingController(),
              hintText: "Username",
              toHide: false,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 20),

            // Email TextField
            UiHelper.CustomTextField(
              controller: TextEditingController(),
              hintText: "Email",
              toHide: false,
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),

            // Password TextField
            UiHelper.CustomTextField(
              controller: TextEditingController(),
              hintText: "Password",
              toHide: true,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 20),

            // Confirm Password TextField
            UiHelper.CustomTextField(
              controller: TextEditingController(),
              hintText: "Confirm Password",
              toHide: true,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 20),

            // Sign Up Button
            UiHelper.CustomButton(
              callback: () {
                // Add sign up logic here
              },
              text: "Sign Up",
            ),
            SizedBox(height: 20),

            // Already have an account Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFC4C4C4),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Add login navigation logic here
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF3797EF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}