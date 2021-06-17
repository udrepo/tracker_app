import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tracker_app/screens/home_screen.dart';
import 'package:tracker_app/screens/signin_screen.dart';
import 'package:tracker_app/services/auth.dart';

class StartingScreen extends StatefulWidget {
  final AuthBase auth;

  const StartingScreen({Key key, @required this.auth}) : super(key: key);


  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  User _user;
void _updateUser(User user){
  setState(() {
    _user = user;
  });
}


@override
  void initState() {
  _updateUser(widget.auth.currentUser);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _user == null ? SignInScreen(
      onSignIn: _updateUser, auth: widget.auth,
    ) : HomeScreen(
      onSignedOut: () => _updateUser(null), auth: widget.auth,
    );
  }
}
