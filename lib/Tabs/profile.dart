// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'My Profile',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25,
              ),
            ),
          ),
          Stack(
            children: [
              Expanded(
                child: Container(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
