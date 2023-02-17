import 'package:flutter/material.dart';
import 'package:loginsignup002/pages/login_page.dart';
import 'package:loginsignup002/pages/new_password.dart';
import 'package:loginsignup002/pages/register_page.dart';

class WelcomePage extends StatelessWidget {
  static const routedName = "/welcome-page";
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            // Container(
            //   color: Colors.cyan,
            // ),
            Image.asset(
              "assets/images/bg_welcome.png",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            Positioned(
              bottom: 25,
              left: 25,
              right: 25,
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/branding.png",
                      width: 141,
                    ),
                  ),
                  const SizedBox(height: 35),
                  MaterialButton(
                    height: 60,
                    minWidth: 350,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginPage.routedName);
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
                          fontFamily: "Urbanist",
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MaterialButton(
                    height: 60,
                    minWidth: 350,
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterPage.routedName);
                    },
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Register",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //           title: const Text("Alert"),
                        //           content: const Text("This Develop App"),
                        //           actions: [
                        //             OutlinedButton(
                        //                 onPressed: () {
                        //                   Navigator.pop(context);
                        //                 },
                        //                 child: const Text("Close")),
                        //           ]);
                        //     });
                      },
                      child: const Text(
                        "Continue as a guest",
                        style: const TextStyle(
                            color: Color.fromRGBO(53, 194, 193, 100),
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

/*
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            )
 */
