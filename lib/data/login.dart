import 'package:bookstore/data/authentication.dart';
import 'package:flutter/material.dart';
import 'package:bookstore/data/repositories/authenticate.dart';
// import '../main.dart';

class Login extends StatefulWidget {
  // const Login({super.key});
  final Function? Changeauth;
  Login({ this.Changeauth});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
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
                    'Login to Your account!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
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
                      const Text('Dont have an account ?'),
                      TextButton(
                          onPressed: (){
                            widget.Changeauth!();
                          },
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
                      onPressed: () async{
                        if(_formKey.currentState!.validate()){
                          dynamic result = await _auth.loginWithEmailAndPassword(email, password);
                          if(result == null){
                            setState(() {
                              error = 'Username or password is incorrect ';
                            });
                          }
                        };
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      ),
                      child:const Text(
                        'Login',
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
