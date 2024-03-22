// import 'package:bookstore/Tabs/home.dart';
import 'package:bookstore/Tabs/home.dart';
import 'package:bookstore/data/repositories/authenticate.dart';
import 'package:bookstore/model/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserA?>(context);
    // ignore: avoid_print
    print(user);
    if (user == null) {
      return const Authenticate();
    } else {
      return const Home();
    }
  }
}
