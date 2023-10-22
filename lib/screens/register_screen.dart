import 'package:flutter/material.dart';

import '../core/assets.dart';
import '../core/constant.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
              child: Column(
                children: <Widget>[
                  Image(
                    image: const AssetImage(Assets.logoLight),
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  const CustomTextField(hintText: 'Username'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const CustomTextField(hintText: 'Password'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const CustomTextField(hintText: 'Confirm password'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  CustomButton(
                    title: 'Register',
                    color: Constant.seconderyColor,
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
