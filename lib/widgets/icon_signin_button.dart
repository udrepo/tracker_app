import 'package:flutter/material.dart';
import 'package:tracker_app/widgets/custom_button.dart';

class IconSignInButton extends CustomButton {
  IconSignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    String asset,
  }) : super(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(asset),
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15),
          ),
          Opacity(
              opacity: 0, child: Image.asset('images/google-logo.png')),
        ],
      ),
      color: color,
      onPressed: onPressed);
}
