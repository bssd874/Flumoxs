// import 'dart:js';
import 'package:flumoxs/screens/login/login_screen.dart';
import 'package:flumoxs/screens/login/regis_screen.dart';
import 'package:flumoxs/screens/main/main_screen.dart';
import 'package:flumoxs/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print("This is route : ${settings.name}");

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context)=>const SplashScreen());
      
        case"/login":
          return PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (_, __, ___) => const LoginScreen(),
          );

        case"/mainscreen":
          return PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 500),
            pageBuilder: (_,__,___)=>const MainScreen()
          );

        case"/register":
          return PageRouteBuilder(
            transitionDuration: const Duration(microseconds: 500), 
            pageBuilder: (_,___,____)=>const RegisScreen()
            
          );
      
      default:
       return _errorRoute();
    }
  }
  
  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_)=>Scaffold(
        appBar: AppBar(title: Text("Error"),),
      )
    );
  }
}