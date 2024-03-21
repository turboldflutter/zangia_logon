import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gradient_borders/gradient_borders.dart';

class LoginPage extends StatelessWidget {
  final txtMobileNumber = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 100),
            ),
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 177,
                width: 335,
                padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone_iphone, color: Colors.grey.shade600),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        SizedBox(
                          width: 271,
                          child: TextField(
                            controller: txtMobileNumber,
                            decoration:
                                InputDecoration(hintText: "Утасны дугаар",hintStyle: TextStyle(fontFamily: 'Nunito'),),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: GradientBoxBorder(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: <Color>[
                        Color(0xffffffff),
                        Color(0x1affffff),
                      ],
                    ),
                    width: 1,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0x99ffffff),
                      Color(0x80ffffff),
                    ],
                    tileMode: TileMode.decal,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
