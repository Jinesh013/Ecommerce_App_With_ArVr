import 'package:ecomapp/pages/home_page.dart';
import 'package:ecomapp/pages/signup_page.dart';
import 'package:ecomapp/widget/my_text_style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
// jhchv
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();

    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    moveToHome(BuildContext context) async {
      if (formKey.currentState!.validate()) {
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
    }

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: formKey,
              child: OverflowBar(
                overflowSpacing: 20,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      "Welcome",
                      style: AppWidget.boldTextField(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Text(
                      "Please enter your data to continue",
                      style: AppWidget.lightTextField(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Username
                  TextFormField(
                    controller: email,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "email is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                        borderSide: const BorderSide(
                            color: Colors.red, width: 2), // Thick red border
                      ),
                      labelText: "Email", 
                    ),
                  ),

                                  
                  // Password
                  TextFormField(
                    controller: password,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return "Paasword is Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.red, width: 2),
                      ),
                      labelText: "Password",
                    ),
                  ),

                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("Validation is Done");
                        }
                      },
                      child: const Text("Login"),
                    ),
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
              )),
        ),
      ),
    );
  }
}
































    // return Scaffold(
    //     body: Center(
    //   // color: Colors.white,
    //   child: Padding(
    //     padding: const EdgeInsets.all(20.0),
    //     child: Form(
    //       key: formKey,
    //       child: OverflowBar(
    //         overflowSpacing: 20,
    //         // child: Column(
    //           children: [
    //             Container(
    //               width: double.maxFinite,
    //               padding: const EdgeInsets.only(top: 100.0),
    //               child: Text(
    //                 "Welcome",
    //                 style: AppWidget.boldTextField(),
    //                 textAlign: TextAlign.center,
    //               ),
    //             ),

    //             Container(
    //               width: double.maxFinite,
    //               padding:
    //                   const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    //               child: Text(
    //                 "Please enter your data to continue",
    //                 style: AppWidget.lightTextField(),
    //                 textAlign: TextAlign.center,
    //               ),
    //             ),

    //             const SizedBox(
    //               height: 100.0,
    //             ),

    //             Padding(
    //               padding: const EdgeInsets.symmetric(
    //                   vertical: 16.0, horizontal: 32.0),
    //               child: Column(
    //                 children: [
    //                 //Username
                      

    //                   //Password
    //                   Container(
    //                     margin: const EdgeInsets.all(8),
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 10, vertical: 8),
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(8),
    //                         color: Colors.deepPurple.withOpacity(.3)),
    //                     child: TextFormField(
    //                       // autofocus:true,
    //                       // obscureText: !isVisible,
    //                       controller: password,
    //                       decoration: const InputDecoration(
    //                         icon: Icon(Icons.lock),
    //                         border: InputBorder.none,
    //                         hintText: "Password",
    //                       ),
    //                       validator: (value) {
    //                         if (value!.isEmpty) {
    //                           return "Password Required";
    //                         }
    //                         if (value.length < 6) {
    //                           return "Password must be 6 letters";
    //                         }
    //                         return null;
    //                       },
    //                     ),
    //                   ),

    //                   const SizedBox(height: 10),

    //                   Container(
    //                     margin: const EdgeInsets.all(8),
    //                     height: 60,
    //                     width: MediaQuery.of(context).size.width * .9,
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(8),
    //                         color: const Color.fromARGB(255, 134, 92, 208)),
    //                     child: TextButton(
    //                         onPressed: () => moveToHome(context),
    //                         child: const Text(
    //                           "Login",
    //                           style:
    //                               TextStyle(color: Colors.white, fontSize: 18),
    //                         )),
    //                   ),

    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       const Text("Don't have an account?"),
    //                       TextButton(
    //                           onPressed: () {
    //                             //Navigate to sign up
    //                             Navigator.push(
    //                                 context,
    //                                 MaterialPageRoute(
    //                                     builder: (context) => const SignUp()));
    //                           },
    //                           child: const Text(
    //                             "Sign Up",
    //                             style: TextStyle(fontSize: 17),
    //                           ))
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         // ),
    //       ),
    //     ),
    //   ),
    // ));