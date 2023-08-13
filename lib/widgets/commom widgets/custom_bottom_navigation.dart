import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/pages/Favorites_page/favorite_page.dart';
import 'package:cosmic_app/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

import '../../common/constants/text_style.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}
int _indexSelected = 0;
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  

  void _selectedItem(int index) {
    setState(() {
      _indexSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: AppColors.lowDark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              _selectedItem(0);
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.scale(
                  scale: _indexSelected == 0 ? 1.2 : 1,
                  child: Image.asset(
                    homeIcon,
                    color: _indexSelected == 0
                        ? AppColors.lightBlue
                        : AppColors.greyColor,
                  ),
                ),
                Text(
                  'Home',
                  style: AppTextStyle.soSmall.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              _selectedItem(1);
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FavouritePage()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.scale(
                  scale: _indexSelected == 1 ? 1.2 : 1,
                  child: Image.asset(
                    favIcon,
                    color: _indexSelected == 1
                        ? AppColors.lightBlue
                        : AppColors.greyColor,
                  ),
                ),
                Text(
                  'Favorite',
                  style: AppTextStyle.soSmall.copyWith(
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => _selectedItem(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Transform.scale(
                  scale: _indexSelected == 2 ? 1.2 : 1,
                  child: Image.asset(
                    moreIcon,
                    color: _indexSelected == 2
                        ? AppColors.lightBlue
                        : AppColors.greyColor,
                  ),
                ),
                Text(
                  'More',
                  style: AppTextStyle.soSmall
                      .copyWith(color: AppColors.whiteColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
