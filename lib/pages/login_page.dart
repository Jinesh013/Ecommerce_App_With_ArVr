// ignore_for_file: dead_code
import 'package:ecomapp/pages/signup_page.dart';
import 'package:ecomapp/widget/my_text_style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // final username = TextEditingController();
    // final password = TextEditingController();

    bool isVisible = false;

    final formKey = GlobalKey<FormState>();

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding:
                     const EdgeInsets.only(top: 150.0),
                child: Text(
                  "Welcome",
                  style: AppWidget.boldTextField(),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text(
                  "Please enter your data to continue",
                  style: AppWidget.lightTextField(),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  //Username
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.3)),
                      child: TextFormField(
                          validator:(value){
                            if (value!.isEmpty){
                              return "Please Enter your Username";
                            }
                            return null;
                          },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Username",
                        ),
                      ),
                    ),
          
                    //Password
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.3)),
                      child: TextFormField(
                        obscureText: !isVisible,
                        decoration: InputDecoration(
                            icon: const Icon(Icons.lock),
                            border: InputBorder.none,
                            hintText: "Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              child: Icon(
                                isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            )),
                      ),
                    ),
          
                    const SizedBox(height: 30),
          
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 60,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 134, 92, 208)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              //Navigate to sign up
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            child: const Text("SIGN UP"))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TextFormField(
//   decoration: const InputDecoration(
//       hintText: "Enter username", labelText: "Username"),
// ),
// TextFormField(
//   obscureText: true,
//   decoration: const InputDecoration(
//       hintText: "Enter password", labelText: "Password"),
// ),
// const SizedBox(
//   height: 100.0,
// ),
