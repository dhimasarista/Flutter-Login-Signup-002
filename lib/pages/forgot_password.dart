import 'package:flutter/material.dart';
import 'package:loginsignup002/pages/otp_verification.dart';

import '../widgets/input_widget.dart';

class ForgotPassword extends StatefulWidget {
  static const routedName = "/forgot-password";
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              "Remember Password? ",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Login",
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
                    "Forgot Password?",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Don't worry! It occurs. Please enter the email address linked with your account.",
                  style: TextStyle(
                      color: Color.fromRGBO(131, 145, 161, 100), fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                makeInput(label: "Email"),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, OtpVerification.routedName);
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Send Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
