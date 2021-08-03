import 'package:flutter/material.dart';
import 'package:demo/constants.dart';
import 'package:demo/components/circular_logo.dart';
import 'package:demo/components/rounded_button.dart';
import 'package:demo/components/Input_field.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(KMainTheme),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 120,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34),
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.zero)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        InputField(
                          hintText: 'hhersi@gmail.com',
                          icon: Icons.mail_outline,
                        ),
                        InputField(
                          hintText: '',
                          icon: Icons.lock_outline,
                          obscure: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'or',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        InputField(
                          hintText: 'Phone Number',
                          icon: Icons.phone_android_rounded,
                          obscure: true,
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        RoundedButton(
                          label: 'Log In',
                          onpressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Text(
                            'Reset Password',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.blueAccent,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Don't have an account?",
                          style: TextStyle(height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        CircularLogo(),
        Positioned(
          left: 10,
          top: 30,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ]),
    );
  }
}
