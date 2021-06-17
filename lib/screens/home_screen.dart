import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tracker_app/services/auth.dart';

class HomeScreen extends StatelessWidget {

  final VoidCallback onSignedOut;
  final AuthBase auth;
  const HomeScreen({Key key,@required this.auth, @required this.onSignedOut}) : super(key: key);

  Future _signOut() async{
    try{
        await auth.signOut();
      }catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          FlatButton(onPressed: _signOut, child: Text('Logout', style: TextStyle(
            fontSize: 16,
            color: Colors.white
          ),))
        ],
      ),
    );
  }
}
