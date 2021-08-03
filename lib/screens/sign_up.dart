import 'package:demo/components/circular_logo.dart';
import 'package:flutter/material.dart';
import 'package:demo/components/rounded_button.dart';
import 'package:demo/constants.dart';
import 'package:demo/components/Input_field.dart';

class SignUp extends StatefulWidget {
  static String id = 'sign_up';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  'Create Account',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Enter the details below to sign up',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InputField(
                          hintText: 'hassan hersi',
                          icon: Icons.person_outline,
                        ),
                        InputField(
                          hintText: 'hhersi@gmail.com',
                          icon: Icons.mail_outline,
                        ),
                        InputField(
                          hintText: 'Password',
                          icon: Icons.lock_outline,
                          obscure: true,
                        ),
                        InputField(
                          hintText: 'Confirm Password ',
                          icon: Icons.lock_outline,
                          obscure: true,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        RoundedButton(
                          label: 'Continue',
                          onpressed: () {},
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Already have an account?',
                          style: TextStyle(height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Log in',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        // TextButton(
                        //   onPressed: null,
                        //   child: Text(
                        //     'Log in',
                        //     style: TextStyle(height: 1.3),
                        //     textAlign: TextAlign.center,
                        //   ),
                        //)
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
