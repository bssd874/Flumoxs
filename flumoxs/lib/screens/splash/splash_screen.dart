import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flumoxs/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';

  // static Route route()
  // {
  //   return MaterialPageRoute(
  //     settings: RouteSettings(name: routeName),
  //     builder: ((context) => SplashScreen())
  //   );
  // }

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds : 2),
    (){
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
           Navigator.of(context).pushNamedAndRemoveUntil('/mainscreen', (route) => false);
        }else{
          Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
        }
        
    });
    return Scaffold(
      backgroundColor: const Color(0xFF2B3A55),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage("assets/images/logo2-removebg.png"),
            ),
          )
        ],
      ),
    );
  }
}