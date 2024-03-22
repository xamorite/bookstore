// import 'package:flutter/cupertino.dart';
import 'package:bookstore/data/authentication.dart';
import 'package:bookstore/data/repositories/database.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:bookstore/data/repositories/authenticate.dart';
import '../main.dart';

class SignUp extends StatefulWidget {

  final Function? Changeauth;
  SignUp({ this.Changeauth});

  // const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String username = '';
  String error =  '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (val) => val!.isEmpty ? 'Enter Your username' : null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      suffixIcon: Icon(Icons.person),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    onChanged: (value) {
                      username = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    validator: (val) => val!.isEmpty ? 'Enter Your email' : null,
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
                  child: TextFormField(
                    validator: (val) => val!.length < 6 ? 'Enter a password with not less than 6 characters' : null,
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
                      const Text('Already have an account ?'),
                      TextButton(
                          onPressed:  (){
                            widget.Changeauth!();
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.orange),
                          ))
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      onPressed: () async{
                         if(_formKey.currentState!.validate()){
                           dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                           if(result == null){
                              setState(() {
                                error = 'Please provide a valid email';
                              });
                           }
                           print('validated');
                         };
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      ),
                      child: const Text(
                        'Sign-up',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  height: 14,
                  child: Text(error,style: const TextStyle(color: Colors.red, fontSize: 14),),
                )
              ],
              // children:
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
