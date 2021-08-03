import 'package:flutter/material.dart';
import 'package:demo/screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:demo/screens/sign_up.dart';
import 'package:demo/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   textTheme: GoogleFonts.latoTextTheme(
      //     Theme.of(context).textTheme,
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        SignUp.id: (context) => SignUp(),
        LoginScreen.id: (context) => LoginScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
      },
    );
  }
}
