import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:loginsignup002/pages/forgot_password.dart';
import 'package:loginsignup002/pages/login_page.dart';
import 'package:loginsignup002/pages/new_password.dart';
import 'package:loginsignup002/pages/otp_verification.dart';
import 'package:loginsignup002/pages/register_page.dart';
import 'package:loginsignup002/pages/success_change_password.dart';
import 'package:loginsignup002/pages/welcome_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Login-Signup App 002',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(useMaterial3: true, fontFamily: "Urbanist"),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.routedName,
      routes: {
        WelcomePage.routedName: (context) => const WelcomePage(),
        LoginPage.routedName: (context) => const LoginPage(),
        RegisterPage.routedName: (context) => const RegisterPage(),
        OtpVerification.routedName: (context) => const OtpVerification(),
        ForgotPassword.routedName: (context) => const ForgotPassword(),
        NewPassword.routedName: (context) => const NewPassword(),
        SuccessChangePassword.routedName: (context) =>
            const SuccessChangePassword(),
      },
    );
  }
}
