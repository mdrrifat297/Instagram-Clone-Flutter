import 'package:flutter/material.dart';
import 'package:instagram/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomImage(imagePath: "instagram_log.png"),
          SizedBox(height: 20),
          UiHelper.CustomImage(imagePath: "instagram_txt.png"),
          SizedBox(height: 20),
          UiHelper.CustomTextField(
            controller: TextEditingController(),
            hintText: "Username",
            toHide: false,
            inputType: TextInputType.text,
          ),
          SizedBox(height: 20),
          UiHelper.CustomTextField(
            controller: TextEditingController(),
            hintText: "Password",
            toHide: true,
            inputType: TextInputType.text,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}