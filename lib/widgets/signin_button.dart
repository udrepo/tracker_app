import 'package:flutter/material.dart';
import 'package:tracker_app/widgets/custom_button.dart';

class SignInButton extends CustomButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  }) : assert(text != null), super(
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 15),
            ),
            color: color,
            onPressed: onPressed);
}
