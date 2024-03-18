// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  'Create a new account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
              const Padding(
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
              const Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    suffixIcon: Icon(Icons.mail),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const Padding(
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
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Already have an account ?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: check,
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                    ),
                    child: Text(
                      'Sign-up',
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
