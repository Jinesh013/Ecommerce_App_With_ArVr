import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 100),
              child: const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // const Text(
            //   "Please Enter your data to Continue",
            //   style: TextStyle(
            //     fontSize: 8,
            //     fontWeight: FontWeight.w300,
            //   ),
            // ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(minimumSize: const Size(100, 50)),
                    onPressed: (){
                      // ignore: avoid_print
                      print("Hello");
                    },
                    child: const Text("Login"),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
