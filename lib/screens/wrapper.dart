import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_girebase_flutter/screens/auth/auth.dart';
import 'package:tutorial_girebase_flutter/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    // Return home or auth widget
    return Auth();
  }
}
