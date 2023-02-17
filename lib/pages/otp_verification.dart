import 'package:flutter/material.dart';

import '../widgets/input_widget.dart';
import 'new_password.dart';

class OtpVerification extends StatefulWidget {
  static const routedName = "/otp-verification";
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
              "Don't received code? ",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend",
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
                    "OTP Verification",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Enter the verification code we just sent on your email address.",
                  style: TextStyle(
                      color: Color.fromRGBO(131, 145, 161, 100), fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    otpInput(),
                    otpInput(),
                    otpInput(),
                    otpInput(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, NewPassword.routedName);
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
