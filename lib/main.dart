import 'package:flutter/material.dart';
import 'package:tutorial_girebase_flutter/screens/auth/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Auth(),
    );
  }
}
