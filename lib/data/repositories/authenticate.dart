// import 'package:bookstore/Tabs/home.dart';
import 'package:bookstore/data/login.dart';
import 'package:bookstore/data/signup.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    
    bool changeAuth = true;

    void toggleAuth() {
      setState(() {
        changeAuth = !changeAuth;
      });
    }

    if (changeAuth) {
      return const Login();
    } else {
      return const SignUp();
    }
  }
}
