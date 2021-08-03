import 'package:flutter/material.dart';
import 'package:demo/constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  bool obscure;
  InputField(
      {required this.hintText, required this.icon, this.obscure = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          //contentPadding: EdgeInsets.all(19),
          suffixText: 'show',
          isDense: true,
          filled: true,
          fillColor: Color(KSecondary),
          hintText: hintText,
          prefixIcon: Icon(
            icon,
            size: 25,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.white),
              borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(width: 1, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
