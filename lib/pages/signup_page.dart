import 'package:ecomapp/pages/login_page.dart';
import 'package:ecomapp/widget/my_text_style.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  // bool isVisible = false; 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding:
                     const EdgeInsets.only(top: 100.0),
                child: Text(
                  "Sign Up",
                  style: AppWidget.boldTextField(),
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
                  children: [
                    //Username
                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.3)),
                      child: TextFormField(
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
                        // obscureText: !isVisible,
                        decoration: const InputDecoration(
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            hintText: "Password",
                            // suffixIcon: GestureDetector(
                            //   onTap: () {
                            //     setState(() {
                            //       isVisible = !isVisible;
                            //     });
                            //   },
                            //   child: Icon(
                            //     isVisible
                            //         ? Icons.visibility
                            //         : Icons.visibility_off,
                            //   ),
                            // )
                            ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.all(8),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple.withOpacity(.3)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: InputBorder.none,
                          hintText: "Email Address",
                        ),
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
                          onPressed: () {
                            // if (formKey.currentState!.validate()){
                            //    //log in method
                            // }
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white,fontSize: 18),
                          )),
                    ),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Alerady have an account?"),
                        TextButton(
                            onPressed: () {
                              //Navigate to sign up
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text("Signin",style: TextStyle(fontSize: 17),))
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