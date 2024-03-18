import 'package:flutter/material.dart';
import '../main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffixIcon: Icon(Icons.person),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: '...........',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Image(image: AssetImage('assets/ic_launcher.png')),
                    ),
                    Text(
                      'Dont have an account ?',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                        onPressed: check,
                        child: Text(
                          'SignUp',
                          style: TextStyle(fontSize: 20, color: Colors.orange),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: check,
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
            // children:
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
