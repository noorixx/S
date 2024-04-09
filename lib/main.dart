import 'package:child_care/pages/HomePage.dart';
import 'package:child_care/pages/Login_page.dart';
import 'package:child_care/pages/details_page.dart';
import 'package:child_care/pages/categoriesPage.dart';
import 'package:child_care/pages/intro_page.dart';
import 'package:child_care/pages/register_page.dart';
import 'package:child_care/pages/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()

        //IntroPage(),
        // routes: {
        // '/intropage': (context) => IntroPage(),
        // '/loginpage': (context) => LoginPage(onTap: () {}),
        // '/regiterpage': (context) => RegisterPage(onTap: () {}),
        );
  }
}
