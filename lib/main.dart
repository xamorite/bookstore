// import 'dart:html';
// import 'dart:html';
import 'package:bookstore/data/authentication.dart';
import 'package:bookstore/model/user.dart';
import 'package:bookstore/wrapper.dart';
import 'package:get/get.dart';
import 'data/repositories/authentication_repository.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:bookstore/data/signup.dart';
import 'package:get_storage/get_storage.dart';
// import 'Authentication/signup.dart';
// import '../splash/splash.dart';
// import 'Tabs/home.dart';
import 'package:flutter/material.dart';
// import 'Authentication/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  Get.testMode = true;
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserA?>.value(
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}

//  AnimatedSplashScreen(
      //     splash: Icons.menu_book_outlined,
      //     duration: 3000,
      //     splashTransition: SplashTransition.scaleTransition,
      //     splashIconSize: 200,
      //     backgroundColor: Colors.orange,
      //     nextScreen:
