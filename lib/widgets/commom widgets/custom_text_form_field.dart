import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final String? errorText;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.errorText,
    this.onChanged,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      style: const TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        errorText: errorText,
        errorStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.greyColor,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
