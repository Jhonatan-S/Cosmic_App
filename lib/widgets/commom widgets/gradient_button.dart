


import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';

class GradientButton extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final void Function()? onTap;
  const GradientButton({
    super.key,
    this.child,
    this.width,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: AppColors.gradientColorBtn),
          borderRadius: BorderRadius.all(
            Radius.circular(44),
          ),
        ),
        child: child,
      )
    );
  }
}
