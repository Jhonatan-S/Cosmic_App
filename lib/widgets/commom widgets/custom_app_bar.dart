import 'package:flutter/material.dart';

import '../../common/constants/colors.dart';

import '../../common/constants/text_style.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? sufixIcon;
  final IconData? prefixIcon;
  final String title;
    const CustomAppBar({
    super.key,
    required this.title,
   
    this.sufixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyle.mediumText.copyWith(
          color: AppColors.whiteColor,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: (){Scaffold.of(context).openDrawer();},
        icon: Icon(prefixIcon),
        color: AppColors.whiteColor,
      ),
      actions: [
        Padding(padding: const EdgeInsets.only(right: 0.0), child: sufixIcon)
      ],
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        height: 126,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.black),
          color: AppColors.lowDark,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(28),
          ),
        ),
      ),
    );
  }
}
