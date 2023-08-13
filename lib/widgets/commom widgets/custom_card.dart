import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';

class BigCard extends StatelessWidget {
  final Widget? child;
  final double? height;
  const BigCard({super.key, this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 10,
      ),
      margin: const EdgeInsets.only( left: 15, right: 15),
      height: height,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(28),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.lowDark,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ]),
      child: child,
    );
  }
}
