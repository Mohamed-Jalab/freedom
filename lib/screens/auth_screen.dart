import 'package:flutter/material.dart';
import 'package:freedom/core/assets.dart';
import 'package:freedom/core/constant.dart';
import 'package:freedom/screens/register_screen.dart';
import 'package:freedom/widgets/custom_button.dart';

import 'login_screen.dart';

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
                color: Constant.primaryColor,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomButton(
                title: 'Register',
                color: Constant.seconderyColor,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
