import 'package:flash_chat/component/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: "logo",
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your Email")),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: "Enter your Password")),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                title: "Log In",
                color: Colors.lightBlueAccent,
                onPress: () {
                  //Implement login functionality.
                })
          ],
        ),
      ),
    );
  }
}
