import 'package:demo/screens/login_screen.dart';
import 'package:demo/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:demo/constants.dart';
import 'package:demo/components/rounded_button.dart';
import 'package:flutter/scheduler.dart';
import 'package:demo/components/circular_logo.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                      horizontal: 35.0, vertical: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                'login',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'World-class English language education for anyone,anywhere.',
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
                      Text(
                        'Join our community!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      // RoundedButton(
                      //   label: 'Log in',
                      //   onpressed: () {
                      //     SchedulerBinding.instance!.addPostFrameCallback((_) {
                      //       Navigator.pushNamed(context, LoginScreen.id);
                      //     });
                      //   },
                      // ),
                      // SizedBox(
                      //   height: 9,
                      // ),
                      // RoundedButton(
                      //   label: 'Sign up',
                      //   onpressed: () {
                      //     SchedulerBinding.instance!.addPostFrameCallback((_) {
                      //       Navigator.pushNamed(context, SignUp.id);
                      //     });
                      //   },
                      // ),
                      RoundedButton(
                        label: 'Log in',
                        onpressed: () {
                          Future.delayed(Duration.zero, () {
                            Navigator.pushNamed(context, LoginScreen.id);
                          });
                        },
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      RoundedButton(
                        label: 'Sign up',
                        onpressed: () {
                          Future.delayed(Duration.zero, () {
                            Navigator.pushNamed(context, SignUp.id);
                          });
                        },
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'By creating an acccount you agree to our Terms and Conditions',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              height: 1.3),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        CircularLogo(),
      ]),
    );
  }
}
