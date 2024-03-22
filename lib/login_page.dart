import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class LoginPage extends StatelessWidget {
  final txtMobileNumber = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 100),
            ),
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 300,
            ),
            Expanded(
              child: Container(
                height: 20,
              ),
            ),
            Center(
              child: Container(
                height: 177,
                width: width - 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                decoration: BoxDecoration(
                  border: const GradientBoxBorder(
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
                  gradient: const LinearGradient(
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone_iphone, color: Colors.grey.shade600),
                        const Padding(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        Container(
                          width: width - 180,
                          child: TextField(
                            controller: txtMobileNumber,
                            decoration: const InputDecoration(
                              hintText: "Утасны дугаар",
                              hintStyle: TextStyle(fontFamily: 'Nunito'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
