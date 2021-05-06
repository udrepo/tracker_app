import 'package:flutter/material.dart';
import 'package:tracker_app/screens/signin_screen.dart';

void main(){
  runApp(TrackerApp());
}

class TrackerApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: SignInPage(),
    );
  }
}
