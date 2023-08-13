
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final EdgeInsets? edgeInsets;
  final Widget? widget;
  final double? height;
  final double? width;
  final Color? color;
  final void Function()? onTap;

  const CircleButton({
    super.key,

    this.edgeInsets,
    this.widget,
    this.height,
    this.width,
    this.color,
    this.onTap
   
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          height: height,
          width: width,
          padding: edgeInsets,
          decoration: BoxDecoration(
            border: Border.all(width: 1.2, color: Colors.black),
            color: color,
            shape: BoxShape.circle
            
          ),
          child: Center(child: widget),
        ),
      ),
    );
  }
}
