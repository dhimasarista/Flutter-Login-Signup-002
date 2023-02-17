import 'package:flutter/material.dart';

class SuccessChangePassword extends StatefulWidget {
  static const routedName = "/success-change-password";
  const SuccessChangePassword({Key? key}) : super(key: key);

  @override
  State<SuccessChangePassword> createState() => _SuccessChangePasswordState();
}

class _SuccessChangePasswordState extends State<SuccessChangePassword> {
  bool obsecureTextStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.verified_sharp,
                    color: Color.fromRGBO(24, 192, 122, 100),
                    size: 100,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Password Changed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Your password has been changed successfully.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(131, 145, 161, 100),
                        fontSize: 18),
                  ),
                  const SizedBox(height: 30),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Back to Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
