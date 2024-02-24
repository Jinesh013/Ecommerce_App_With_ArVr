import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
        color: Colors.white,
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
