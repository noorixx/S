import 'package:child_care/pages/Login_page.dart';
import 'package:child_care/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
// initially show the login screen
  bool showIntroPage = true;

// toggle between login and register page
  void togglePages() {
    setState(() {
      showIntroPage = !showIntroPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showIntroPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
