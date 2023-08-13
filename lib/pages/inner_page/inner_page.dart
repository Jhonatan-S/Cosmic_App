import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/common/constants/text_style.dart';
import 'package:cosmic_app/widgets/commom%20widgets/circle_btn.dart';
import 'package:cosmic_app/widgets/commom%20widgets/gradient_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/widget_inner_page/item_aboult_inner_page.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(background2),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                  colors: AppColors.gradientColorBtn,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,10,20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleButton(
                        onTap: () => Navigator.pop(context),
                        color: const Color(0x79091522),
                        edgeInsets: const EdgeInsets.all(12),
                        widget: Image.asset(
                          backIcon,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      CircleButton(
                        color: const Color(0x79091522),
                        edgeInsets: const EdgeInsets.all(12),
                        widget: Image.asset(
                          favIcon,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 590,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(193, 8, 1, 51),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(28),
                          topRight: Radius.circular(28),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Mercury',
                                style: AppTextStyle.bigText.copyWith(
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ItemAboultInnerPage(
                                      icon: iconMass,
                                      title: 'Mass',
                                      subTitle: '10⌃23 kg',
                                      value: '3.285',
                                      fontSize: 28,
                                    ),
                                    ItemAboultInnerPage(
                                      icon: iconGravity,
                                      title: 'Gravity',
                                      subTitle: 'm/s²',
                                      value: '3.7',
                                      fontSize: 28,
                                    ),
                                    ItemAboultInnerPage(
                                      icon: iconSun,
                                      title: 'Day',
                                      subTitle: '(Day)',
                                      value: '59',
                                      fontSize: 28,
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ItemAboultInnerPage(
                                      icon: iconRocket,
                                      title: 'Esc. velocity',
                                      subTitle: 'km/s',
                                      value: '47.87',
                                      fontSize: 28,
                                    ),
                                    ItemAboultInnerPage(
                                      icon: iconTemp,
                                      title: 'Mean',
                                      subTitle: 'temp (C)',
                                      value: '427',
                                      fontSize: 28,
                                    ),
                                    ItemAboultInnerPage(
                                      icon: iconRulerSun,
                                      title: 'Distance from',
                                      subTitle: 'Sun (km)',
                                      value: '57.910⌃4',
                                      fontSize: 28,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              GradientButton(
                                onTap: (){},
                                width: 150,
                                height: 50,
                                child: Text(
                                  'Visit',
                                  style: AppTextStyle.mediumText.copyWith(
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: -575,
                      child: Image.asset(bigPlanet),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
