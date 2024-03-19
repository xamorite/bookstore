import 'package:bookstore/data/authentication.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/data/repositories/authenticate.dart';
// import '../main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Image(image: AssetImage('assets/ic_launcher.png')),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Login to Your account!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffixIcon: Icon(Icons.mail),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: '...........',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Dont have an account ?'),
                    TextButton(
                        onPressed: toggleAuth,
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () async {
                      dynamic result = await _auth.SignInAnon();
                      if (result == null) {
                        print('error signing in');
                      } else {
                        print('signed in');
                        print(result);
                      }
                    },
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
