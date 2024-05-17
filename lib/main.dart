import 'package:flutter/material.dart';
import 'package:gleo_x/Screen/HomePage.dart';

import 'Screen/LoginPage.dart';
import 'Screen/SignUpPage.dart';
import 'Screen/SplashPage.dart';
import 'Screen/landingPage.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false, // Set this to false
      routes: {
        '/': (context) => SplashScreen(),
        '/landing': (context) => LandingPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
