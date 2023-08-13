import 'dart:async';

import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/pages/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/commom widgets/background.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
     Timer(const Duration(seconds: 2), pushPage);
  }

  void pushPage() {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignInPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Stack(
          children: [
            const Align(
              child: SizedBox(
                height: 300,
                width: 300,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            Align(
              child: Image.asset(logo),
            ),
          ],
        ),
      ),
    );
  }
}
