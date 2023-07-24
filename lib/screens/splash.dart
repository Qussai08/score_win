import 'package:flutter/material.dart';
import 'package:score_win/screens/nav_screen.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 1), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => NavScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          clipBehavior: Clip.none,
          color: Color(0xFF020612),
        ),
        Center(
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
      ],
    );
  }
}
