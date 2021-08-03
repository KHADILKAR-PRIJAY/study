import 'package:flutter/material.dart';

class CircularLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      left: 135,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 7),
        ),
        child: CircleAvatar(
          backgroundColor: Color(0xFFF3F3F8),
          radius: 40,
          child: Image.asset('assets/images/Logo.png'),
        ),
      ),
    );
  }
}
