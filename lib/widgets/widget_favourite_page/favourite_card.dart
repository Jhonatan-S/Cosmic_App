import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/common/constants/text_style.dart';
import 'package:flutter/material.dart';

class FavouritesCard extends StatelessWidget {
  final void Function()? onTap;
  final String image;
  final String title;
  final String description;
  const FavouritesCard(
      {super.key,
      this.onTap,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 20, 20, 20),
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          color: AppColors.lowDark, borderRadius: BorderRadius.circular(28)),
      child: Row(
        children: [
          Image.asset(image),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.smallText.copyWith(
                        color: AppColors.lightBlue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                        
                        child: const Icon(
                          Icons.favorite,
                          color: AppColors.whiteColor,
                        )),
                  ],
                ),
                Text(
                  description,
                  style: AppTextStyle.smallText.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: onTap,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Details',
                            style: AppTextStyle.soSmall.copyWith(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Image.asset(iconMore)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
