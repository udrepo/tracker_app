import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tracker_app/screens/signin_screen.dart';
import 'package:tracker_app/screens/starting_screen.dart';
import 'package:tracker_app/services/auth.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: StartingScreen(
        auth: Auth(),
      ),
    );
  }
}
