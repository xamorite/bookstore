import 'package:bookstore/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create a user object based on firebase user
  UserA? _userFromFirebaseUser(User? user) {
    return user != null ? UserA(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<UserA?> get user {
    return _auth
        .authStateChanges()
        .map(_userFromFirebaseUser);
  }

  //signin with annonymous
  Future SignInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  Future signOut()async {
    try{
      return await _auth.signOut();
    }catch(e){
       print(e.toString());
       return null;
    }
  }
}
