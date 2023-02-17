import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SocialButton extends StatelessWidget {
  dynamic icon;
  dynamic onPressed;
  SocialButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(boxShadow: [
          const BoxShadow(
              blurRadius: 1, blurStyle: BlurStyle.outer, color: Colors.grey),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        // ignore: sized_box_for_whitespace
        child: Container(
          height: 40,
          child: OutlinedButton(
            child: icon,
            onPressed: onPressed,
          ),
        ));
  }
}
