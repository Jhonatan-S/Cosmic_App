

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget? child;
  const BackgroundWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background/background1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}