import 'package:flutter/material.dart';

class UiHelper {
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
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        keyboardType: inputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal, // Corrected here
            color: const Color.fromARGB(255, 250, 250, 250),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  static Widget CustomImage({required String imagePath}) {
    return Image.asset("assets/images/$imagePath");
  }
}
