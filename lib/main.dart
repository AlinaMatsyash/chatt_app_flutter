import 'package:flutter/material.dart';
import 'views/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}
