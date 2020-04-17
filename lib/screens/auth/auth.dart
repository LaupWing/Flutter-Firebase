import 'package:flutter/material.dart';
import 'package:tutorial_girebase_flutter/screens/auth/signin.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SignIn()
      );
  }
}
