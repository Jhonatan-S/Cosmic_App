import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/pages/inner_page/inner_page.dart';
import 'package:cosmic_app/widgets/commom%20widgets/background.dart';
import 'package:cosmic_app/widgets/commom%20widgets/custom_app_bar.dart';
import 'package:cosmic_app/widgets/commom%20widgets/custom_bottom_navigation.dart';
import 'package:cosmic_app/widgets/custom_drawer_menu.dart';
import 'package:flutter/material.dart';

import '../../widgets/widget_favourite_page/favourite_card.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: BackgroundWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              const CustomAppBar(

              prefixIcon: Icons.menu,
              title: 'Favorites',
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child:  SingleChildScrollView(
                  child: Column(
                    children: [
                      FavouritesCard(
                        onTap: (){
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const InnerPage()));
                        } ,
                        image: bigMercury,
                        title: 'Mercury',
                        description:
                            'Mercury is the smallest planet in the Solar System and the closest to the Sun.',
                      ),
                      const FavouritesCard(
                        image: bigMercury,
                        title: 'Saturn',
                        description:
                            'Saturn is the sixth planet from the Sun and the second-largest planet in our solar system.',
                      ),
                      const FavouritesCard(
                        image: bigMercury,
                        title: 'Venus',
                        description:
                            'Venus, second planet from the Sun and sixth in the solar system in size and mass. No planet approaches closer to Earth than Venus.',
                      ),
                      const FavouritesCard(
                        image: bigMercury,
                        title: 'Uranus',
                        description:
                            'The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy.',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const CustomBottomNavigationBar()
          ],
        ),
      ),
    );
  }
}
