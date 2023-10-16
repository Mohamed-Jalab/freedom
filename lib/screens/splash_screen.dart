import 'package:flutter/material.dart';
import 'package:freedom/core/assets.dart';
import 'package:freedom/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 600),
      () {
        setState(() {
          opacity = 1;
        });
      },
    );
    Future.delayed(const Duration(milliseconds: 1800), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 400),
          child: Image(
              image: const AssetImage(Assets.logoLight),
              width: MediaQuery.of(context).size.width * 0.5),
        ),
      ),
    );
  }
}
