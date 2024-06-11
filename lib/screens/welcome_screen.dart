import 'package:flash_chat/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/component/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;

  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: controller!,
      curve: Curves.fastOutSlowIn,
    ));
    controller!.forward();
  }

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
            Row(
              children: <Widget>[
                Hero(
                  tag: "logo",
                  child: SizedBox(
                    height: 60.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(221, 51, 51, 51)),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      new TypewriterAnimatedText("Flash Chat",
                          speed: Duration(milliseconds: 200))
                    ],
                    // repeatForever: true,
                    pause: Duration(seconds: 3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                title: "Log In",
                color: Colors.lightBlueAccent,
                onPress: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                }),
            RoundedButton(
                title: "Register",
                color: Colors.blueAccent,
                onPress: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}
