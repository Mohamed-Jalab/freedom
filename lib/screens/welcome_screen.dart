import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import '../core/assets.dart';
import 'auth_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarBrightness: Brightness.dark,
    // ));
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Image(image: AssetImage(Assets.welcomeImage)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.06),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                'Welcome to our Freedom messaging app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: const Text(
                'Freedom talk any person of your mother language',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.015),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.grey),
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Skip '),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
