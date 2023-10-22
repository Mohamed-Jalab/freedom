import 'package:flutter/material.dart';

import '../core/assets.dart';
import '../core/constant.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
              child: Column(
                children: <Widget>[
                  Image(
                    image: const AssetImage(Assets.logoLight),
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  const CustomTextField(hintText: 'Enter your Username'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const CustomTextField(hintText: 'Enter your Password'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  CustomButton(
                    title: 'Login',
                    color: Constant.primaryColor,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
