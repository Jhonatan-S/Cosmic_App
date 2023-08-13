import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/widgets/commom%20widgets/background.dart';
import 'package:cosmic_app/widgets/commom%20widgets/custom_bottom_navigation.dart';
import 'package:cosmic_app/widgets/commom%20widgets/planet_button.dart';
import 'package:flutter/material.dart';

import '../../common/constants/text_style.dart';
import '../../widgets/commom widgets/custom_app_bar.dart';
import '../../widgets/commom widgets/custom_card.dart';
import '../../widgets/custom_drawer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _aboutMars =
      'Mars is the fourth planet from the\nSun and the second-smallest planet\nin the Solar System, only being larger\nthan Mercury. In the English\nlanguage, Mars is named for the\nRoman god of war';

  final String _description =
      "The Solar System is the gravitationally bound\nsystem of the Sun and the objects that orbit it. It\nformed 4.6 billion years ago from the gravitational\ncollapse of a giant interstellar molecular cloud.\nThe vast majority (99.86%) of the system's mass\nis in the Sun, with most of the remaining mass\ncontained in the planet Jupiter. The four inner\nsystem planets—Mercury, Venus, Earth and Mars\n—are terrestrial planets, being composed\nprimarily of rock and metal. The four giant planets\nof the outer system are substantially larger and\nmore massive than the terrestrials. ";

  

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: const CustomDrawer(),
      body: BackgroundWidget(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAppBar(
                  
                  title: 'Solar System',
                  prefixIcon: Icons.menu,
                  
                  sufixIcon: TextButton(onPressed: () {},child: Image.asset(profileIcon)),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PlanetButton(
                          planetName: 'Mercury',
                          planetImage: mercuryPlanet,
                        ),
                        PlanetButton(
                          planetName: 'Venus',
                          planetImage: venusPlanet,
                        ),
                        PlanetButton(
                          planetName: 'Earth',
                          planetImage: earthPlanet,
                        ),
                        PlanetButton(
                          planetName: 'Júpiter',
                          planetImage: mercuryPlanet,
                        ),
                        PlanetButton(
                          planetName: 'Saturn',
                          planetImage: mercuryPlanet,
                        ),
                        PlanetButton(
                          planetName: 'uranus',
                          planetImage: mercuryPlanet,
                        ),
                        PlanetButton(
                          planetName: 'Netuno',
                          planetImage: mercuryPlanet,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BigCard(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Planet of the day',
                                  style: AppTextStyle.smallText.copyWith(
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(marsPlanet),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 0),
                                            child: Text(
                                              'Mars',
                                              style: AppTextStyle.smallText
                                                  .copyWith(
                                                      color:
                                                          AppColors.lightBlue,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                          ),
                                          Text(
                                            _aboutMars,
                                            style: AppTextStyle.soSmall
                                                .copyWith(
                                                    color:
                                                        AppColors.whiteColor),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Details',
                                            style:
                                                AppTextStyle.soSmall.copyWith(
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
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        BigCard(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Solar System',
                                  style: AppTextStyle.smallText.copyWith(
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  _description,
                                  style: AppTextStyle.soSmall
                                      .copyWith(color: AppColors.whiteColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const CustomBottomNavigationBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
