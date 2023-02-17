import 'package:flutter/material.dart';
import 'package:loginsignup002/pages/forgot_password.dart';
import 'package:loginsignup002/pages/register_page.dart';

import '../widgets/social_button.dart';
import '../widgets/input_widget.dart';

class LoginPage extends StatefulWidget {
  static const routedName = "/login-page";
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsecureTextStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Don't have an account? ",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, RegisterPage.routedName);
                },
                child: const Text(
                  "Register now",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontWeight: FontWeight.w600,
                  ),
                ))
          ]),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            blurRadius: 1,
                            blurStyle: BlurStyle.outer,
                            color: Colors.grey),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: IconButton(
                    padding: const EdgeInsets.only(left: 8),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(height: 30),
                // ignore: sized_box_for_whitespace
                Container(
                  width: 300,
                  child: const Text(
                    "Welcome back! Glad to see you, Again!",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                makeInput(label: "Enter your email"),
                makeInput(
                    label: "Enter your password",
                    obsecureText: obsecureTextStatus,
                    hideText: obsecureTextStatus,
                    icon: Padding(
                        padding: const EdgeInsetsDirectional.only(end: 12.0),
                        child: IconButton(
                          icon: obsecureTextStatus
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              obsecureTextStatus = !obsecureTextStatus;
                            });
                          },
                        ))),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color.fromRGBO(131, 145, 161, 1),
                          fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, ForgotPassword.routedName);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: const Text("Hello!"),
                              content: const Text("Welcome Back Dude!"),
                              actions: [
                                OutlinedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Close")),
                              ]);
                        });
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        child: const Divider(
                      thickness: 2,
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Or Login with",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                        child: const Divider(
                      thickness: 2,
                    )),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialButton(
                        icon: Image.asset(
                          "assets/images/facebook_ic.png",
                        ),
                        onPressed: () {}),
                    SocialButton(
                        icon: Image.asset(
                          "assets/images/google_ic.png",
                          height: 30,
                        ),
                        onPressed: () {}),
                    SocialButton(
                        icon: Image.asset(
                          "assets/images/cib_apple.png",
                        ),
                        onPressed: () {}),
                  ],
                ),
                // const SizedBox(
                //   height: 60,
                // ),
                // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //   const Text(
                //     "Don't have an account? ",
                //     style: const TextStyle(
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                //   TextButton(
                //       onPressed: () {
                //         Navigator.pushReplacementNamed(
                //             context, RegisterPage.routedName);
                //       },
                //       child: const Text(
                //         "Register now",
                //         style: TextStyle(
                //           color: Colors.cyan,
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ))
                // ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
