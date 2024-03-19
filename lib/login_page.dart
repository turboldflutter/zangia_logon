import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              // logo
              Image.asset(
                'assets/images/logo.png',
                width: 300,
              ),
              const SizedBox(
                height: 100,
              ),
              
              //username

              //password

              // forgot

              // signin
            ],
          ),
        ),
      ),
    );
  }
}
