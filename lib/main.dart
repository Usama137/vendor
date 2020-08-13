import 'package:flutter/material.dart';
import 'package:vendor/Screens/signin.dart';
import 'package:vendor/Screens/walkthrough.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        initialRoute: Walkthrough.id,
        routes: {
          Walkthrough.id: (context) => Walkthrough(),
          Signin.id: (context) => Signin(),

        }
    );
  }
}
