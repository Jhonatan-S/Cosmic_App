import 'package:flutter/material.dart';
import '../../common/constants/colors.dart';
import '../../common/constants/text_style.dart';

class PlanetButton extends StatelessWidget {
  final String? planetName;
  final String? planetImage;
  const PlanetButton({super.key, required this.planetName, required this.planetImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
            bottom: 12,
          ),
          decoration: BoxDecoration(
            color: AppColors.lowDark,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(5, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(planetImage!),
              const SizedBox(width: 10,),
              Text(
                planetName!,
                style: AppTextStyle.soSmall.copyWith(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
