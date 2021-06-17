import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tracker_app/screens/home_screen.dart';
import 'package:tracker_app/screens/signin_screen.dart';
import 'package:tracker_app/services/auth.dart';

class StartingScreen extends StatelessWidget {
  final AuthBase auth;

  const StartingScreen({Key key, this.auth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final user = snapshot.data;
          return user == null
              ? SignInScreen(
                  auth: auth,
                )
              : HomeScreen(
                  auth: auth,
                );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
