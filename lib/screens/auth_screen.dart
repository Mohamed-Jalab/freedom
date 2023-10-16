import 'package:flutter/material.dart';
import 'package:freedom/core/assets.dart';
import 'package:freedom/widgets/custom_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(Assets.logoLight),
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              CustomButton(
                title: 'Login',
                color: Colors.green,
                onPressed: () {},
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomButton(
                title: 'Register',
                color: Colors.orange,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
