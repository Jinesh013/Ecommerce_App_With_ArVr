import 'package:ecomapp/pages/home_page.dart';
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
    // bool isVisible = false;

    final formKey = GlobalKey<FormState>();

    moveToHome(BuildContext context) async {
      if (formKey.currentState!.validate()) {
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
    }

    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 100.0),
                child: Text(
                  "Welcome",
                  style: AppWidget.boldTextField(),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  //Username
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.3)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Required";
                          }
                          return null;
                        },
                      ),
                    ),

                    //Password
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.3)),
                      child: TextFormField(
                        // obscureText: !isVisible,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Required";
                          }
                          if (value.length < 6) {
                            return "Password must be 6 letters";
                          }
                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      margin: const EdgeInsets.all(8),
                      height: 60,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromARGB(255, 134, 92, 208)),
                      child: TextButton(
                          onPressed: () => moveToHome(context),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 18),
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
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 17),
                            ))
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
