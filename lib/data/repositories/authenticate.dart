// import 'package:bookstore/Tabs/home.dart';
import 'package:bookstore/Tabs/home.dart';
import 'package:bookstore/data/login.dart';
import 'package:bookstore/data/signup.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool changeAuth = true;

  Changeauth() {
    setState(() {
      changeAuth = !changeAuth;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (changeAuth) {
      return const Home();
    } else {
      return const Login();
    }
  }
}
