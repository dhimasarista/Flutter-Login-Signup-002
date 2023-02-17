import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget makeInput({label, icon, obsecureText = false, hideText = false}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text(
        //   label,
        //   style: const TextStyle(
        //       fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        // ),
        // const hi(
        //   height: 5,
        // ),
        SizedBox(
          height: 20,
        ),
        TextField(
          obscureText: obsecureText,
          decoration: InputDecoration(
            fillColor: const Color.fromRGBO(247, 248, 249, 1),
            filled: true,
            hintText: label,
            hintStyle: const TextStyle(color: Color.fromRGBO(131, 145, 161, 1)),
            suffixIcon: icon,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
          ),
        ),
      ],
    ),
  );
}

Widget otpInput() {
  return Flexible(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        // maxLength: 1,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22),
        decoration: InputDecoration(
          fillColor: const Color.fromRGBO(247, 248, 249, 1),
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: Color.fromRGBO(232, 236, 244, 1))),
        ),
      ),
    ),
  );
}
