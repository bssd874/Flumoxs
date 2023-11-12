import 'package:flumoxs/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose()
  {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF2B3A55), 
        appBar: _appBar(),

        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(44, 45, 44, 0),
                child: Container(
                  width: 341,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0x4CD9D9D9),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                        child: ImageIcon(
                          AssetImage("assets/icons/Group.png"),
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(13, 0, 0, 0),
                          child: TextFormField(
                            controller: emailController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'enter e-mail',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff000000)
                              ),
                              labelStyle: TextStyle(
                                color: Color(0xff000000)
                              ), 
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(44, 62, 44, 0),
                child: Container(
                  width: 341,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0x4CD9D9D9),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                        child: ImageIcon(
                          AssetImage("assets/icons/Vector (4).png"),
                          size: 24,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(13, 0, 0, 0),
                          child: TextFormField(
                            controller: passwordController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'enter password',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xff000000)
                              ),
                              labelStyle: TextStyle(
                                color: Color(0xff000000)
                              ), 
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [


                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(220, 20, 44, 0),
                    child: TextButton(
                      child: Text(
                        "do you have account ?",
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                          .pushNamedAndRemoveUntil('/register', (route) => false);
                      },
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(44, 30, 44, 0),
                child: SizedBox(
                  width: 341,
                  height: 39,
                  child: ElevatedButton(
                  onPressed: () {
                    logIn();
                    Navigator.of(context).pushNamedAndRemoveUntil('/mainscreen', (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF677C93)
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    ),
                  ),
                ),
                ),
              ),
              
            ],
          ),
        ),
    );
  }

  Future logIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(), 
      password: passwordController.text.trim(),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(250),
      child: Container(
        decoration: _boxDecoration(),
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo2-removebg.png",
              height: 200,
              width: 300,
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 40,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }

  Decoration _boxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        color: Color(0xFF253146));
  }
}
