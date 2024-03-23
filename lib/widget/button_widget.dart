import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button_large_primary extends StatelessWidget {
  VoidCallback onPressed;
  String text;
  Color? color;

  Button_large_primary(
      {super.key, required this.onPressed, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width - 50,
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                // side: BorderSide(color: Colors.)
              ),
            ),
            backgroundColor:
                MaterialStatePropertyAll<Color>(this.color ?? Colors.green)),
        child: Container(
          width: double.infinity,
          child: Text(
            this.text,
            style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: (color == Colors.white ? Colors.black : Colors.white)),
          ),
          alignment: Alignment.center,
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}
