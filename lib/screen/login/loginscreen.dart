import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';
import 'package:instagram/screen/singup/singupscreen.dart';

class LoginScreen extends StatelessWidget {
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

            // Password TextField
            UiHelper.CustomTextField(
              controller: TextEditingController(),
              hintText: "Password",
              toHide: true,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 20),

            // Forget Password Row
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: UiHelper.CustomTextButton(
                    text: "Forget password?",
                    callback: () {
                      // Add forget password logic here
                    },
                  ),
                ),
              ],
            ),
            // Login Button
            SizedBox(height: 20),

            UiHelper.CustomButton(
              callback: () {
                // Add login logic here
              },
              text: "Login",
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imagePath: "icons8-facebook-48.png"),
                UiHelper.CustomTextButton(
                    text: "Login with facebook",
                    callback: () {
                      // Add login with facebook logic here
                    })
              ],
            ),
            SizedBox(height: 10),

            Text(
              "or",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 254, 254, 254),
              ),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 254, 254, 254),
                  ),
                ),
                UiHelper.CustomTextButton(
                    text: "Sign up",
                    callback: () {
                      // Add sign up navigation logic here
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SingUpScreen()));
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
