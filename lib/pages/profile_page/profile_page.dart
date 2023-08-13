import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/common/constants/text_style.dart';
import 'package:cosmic_app/widgets/commom%20widgets/background.dart';
import 'package:cosmic_app/widgets/commom%20widgets/custom_app_bar.dart';
import 'package:cosmic_app/widgets/custom_drawer_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: BackgroundWidget(
        child: Column(
          children: [
            const CustomAppBar(
              
              title: 'My  Profile',
              prefixIcon: Icons.arrow_back,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.lowDark,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 2,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    child: Image.asset(profileIcon),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jhonatan Dev',
                        style: AppTextStyle.smallText.copyWith(
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Flutter developer',
                        style: AppTextStyle.smallText.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.edit,
                    color: AppColors.whiteColor,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.lowDark,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Switch(
                          inactiveTrackColor: AppColors.whiteColor,
                          activeColor: const Color(0xFF091522),
                          activeTrackColor: AppColors.lightBlue,
                          value: true,
                          onChanged: (bool toogleBtn) {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Show Planetary progress',
                          style: AppTextStyle.smallText.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                    ClipOval(
                      child: TweenAnimationBuilder(
                        tween: Tween(begin: 0.0, end: 1.0),
                        duration: const Duration(seconds: 5),
                        builder: (context, value, _) {
                          return ShaderMask(
                            shaderCallback: (Rect bounds) => const SweepGradient(
                              startAngle: 0,
                              endAngle: 3.14 * 2,
                              colors: AppColors.gradientColorBtn,
                            ).createShader(bounds),
                            child: SizedBox(
                              width: 200,
                              height: 200,
                              child: Transform.flip(
                                origin: const Offset(20, 50),
                                child: const CircularProgressIndicator(
                                  value: 0.5,
                                  backgroundColor: Colors.black,
                                  color: AppColors.whiteColor,
                                  strokeWidth: 30,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
