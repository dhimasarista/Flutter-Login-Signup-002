import 'package:flutter/material.dart';

import 'package:loginsignup002/pages/success_change_password.dart';
import '../widgets/input_widget.dart';

class NewPassword extends StatefulWidget {
  static const routedName = "/new-password";
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool obsecureTextStatus = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    "Create new password",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Your new password must be unique from those previously used.",
                  style: TextStyle(
                      color: Color.fromRGBO(131, 145, 161, 100), fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                makeInput(label: "New Password"),
                makeInput(label: "Confirm New Password"),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, SuccessChangePassword.routedName);
                  },
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Reset Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
