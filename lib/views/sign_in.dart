import 'package:chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: <Widget>[
            TextField(
              style: simpleTextStyle(),
              decoration: textFieldInputDecoration('email'),
            ),
            TextField(
              style: simpleTextStyle(),
              decoration: textFieldInputDecoration('password'),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Forget Password?',
                  style: simpleTextStyle(),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
