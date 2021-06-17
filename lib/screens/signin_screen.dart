import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracker_app/services/auth.dart';
import 'package:tracker_app/widgets/icon_signin_button.dart';
import 'package:tracker_app/widgets/signin_button.dart';

class SignInScreen extends StatelessWidget {


  final AuthBase auth;

  const SignInScreen({Key key, @required this.auth,}) : super(key: key);

  Future _signInAnonymously() async{
   try{
     final user = await auth.signInAnonymously();
     print(user.uid);
   }catch(e){
     print(e.toString());
    }
  }


  Future _signInWithGoogle() async{
    try{
      final user = await auth.sigInWithGoogle();
      print(user.uid);
    }catch(e){
      print(e.toString());
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            IconSignInButton(
              text: 'Sign in with Google',
              color: Colors.white,
              textColor: Colors.black,
              onPressed: _signInWithGoogle,
              asset: 'images/google-logo.png',
            ),
            SizedBox(
              height: 8,
            ),
            IconSignInButton(
              text: 'Sign in with Facebook',
              color: Color(0xff334D92),
              textColor: Colors.white,
              onPressed: () {},
              asset: 'images/facebook-logo.png',
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              text: 'Sign in with Email',
              color: Colors.teal[700],
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              text: 'Go anonymous',
              color: Colors.black87,
              textColor: Colors.white,
              onPressed: _signInAnonymously,
            ),
          ],
        ),
      ),
    );
  }
}
