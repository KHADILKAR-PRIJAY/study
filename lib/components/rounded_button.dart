import 'package:flutter/material.dart';
import 'package:demo/constants.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final Function onpressed;
  RoundedButton({required this.label, required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 46),
      child: ElevatedButton(
        onPressed: onpressed(),
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        style: ButtonStyle(
          elevation: null,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.white))),
          backgroundColor: MaterialStateProperty.all<Color>(
            Color(KMainTheme),
          ),
        ),
      ),
    );
  }
}
