import 'package:firebase_auth/firebase_auth.dart';
import 'package:tutorial_girebase_flutter/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Create user obj based on firebaseuser
  User _usersFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid)  : null;
  }

  // auth change users stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
      .map(_usersFromFirebaseUser);
  }

  // Sign in anom
  Future signInAnom() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _usersFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Sign in with email and password

  // Register with email and password

  // Sign out
}
