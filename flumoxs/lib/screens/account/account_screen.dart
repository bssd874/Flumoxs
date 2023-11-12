import 'package:flumoxs/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B3A55),
      body: Center(
        child: ElevatedButton(
          child: Text("LOG OUT"),
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.of(context, rootNavigator: true)
                          .pushNamedAndRemoveUntil(
                              '/login', (route) => false);
          }
        ),
        
      ),
    );
  }
}
