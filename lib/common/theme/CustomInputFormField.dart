import 'package:flutter/material.dart';
import '../constants/colors.dart';

final InputDecorationTheme themeFormField = InputDecorationTheme(
  fillColor: AppColors.lowDark,
  filled: true,
  contentPadding: const EdgeInsets.all(15),
  focusedBorder: const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(50),
    borderSide: const BorderSide(
      color: AppColors.whiteColor,
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
  ),
);
