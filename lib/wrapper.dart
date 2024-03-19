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
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
