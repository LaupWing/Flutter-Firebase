import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_girebase_flutter/screens/auth/auth.dart';
import 'package:tutorial_girebase_flutter/models/user.dart';
import 'package:tutorial_girebase_flutter/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if(user == null){
      return Auth();
    }else{
      return Home();
    }
  }
}
