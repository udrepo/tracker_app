import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;


  CustomButton({this.child, this.color, this.borderRadius = 5, this.height = 50, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(onPressed: onPressed,
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(borderRadius)
          ),
        ),
      ),
    );
  }
}