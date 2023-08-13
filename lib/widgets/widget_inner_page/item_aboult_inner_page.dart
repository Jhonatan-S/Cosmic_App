import 'package:flutter/material.dart';
import '../../common/constants/colors.dart';
import '../../common/constants/text_style.dart';

class ItemAboultInnerPage extends StatelessWidget {

  final String title;
  final String icon;
  final String subTitle;
  final double? fontSize;
  final String value;
  const ItemAboultInnerPage({
    super.key,
    required this.title,
    required this.icon,
    required this.subTitle,
    required this.value,
    this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 150,
      color: Colors.transparent,
      child: Column(
        children: [
          Image.asset(icon),
          Text(
            title,
            style: AppTextStyle.smallText.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            subTitle,
            style: AppTextStyle.smallText.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
          Text(
            value,
            style: AppTextStyle.bigText.copyWith(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
