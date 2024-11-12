import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logintest/pages/login_page.dart';
import 'home_page.dart';
import 'login_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //로그인 성공
          if (snapshot.hasData){
            return HomePage();
          }

          //로그인 실패
          else{
            return LoginOrRegisterPage();
          }

        },
      ),
    );
  }
}
