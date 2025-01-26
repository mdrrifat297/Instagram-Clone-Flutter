import 'package:flutter/material.dart';

class UiHelper {
  // Custom TextField
  static Widget CustomTextField({
    required TextEditingController controller,
    required String hintText,
    required bool toHide,
    required TextInputType inputType,
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFFFFFFF)),
      ),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 250, 250, 250),
          ),
          border: InputBorder.none, // Removes internal border
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  // Custom Image
  static Widget CustomImage({required String imagePath}) {
    return Image.asset("assets/images/$imagePath");
  }

  // Custom Text Button
  static Widget CustomTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: callback,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: Color(0xFF3797EF),
        ),
      ),
    );
  }

  // Custom Button
  static Widget CustomButton({
    required VoidCallback callback,
    required String text,
  }) {
    return SizedBox(
      height: 44,
      width: 343,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF3797EF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
