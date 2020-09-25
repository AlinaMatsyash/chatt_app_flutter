import 'package:chat_app/helper/authenticate.dart';
import 'package:chat_app/helper/helperfunctions.dart';
import 'package:chat_app/views/chat_rooms_screen.dart';
import 'package:flutter/material.dart';
import 'views/sign_in.dart';
import 'views/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool userIsLoggenIn = false;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference(true).then((value) {
      setState(() {
        userIsLoggenIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.blue,
      ),
      home: userIsLoggenIn ? ChatRoom() /**/ : Authenticate(),
    );
  }
}
