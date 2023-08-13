import 'dart:async';

import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/pages/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';

import '../common/constants/colors.dart';
import '../common/constants/text_style.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isLogOut = false;

  Future<void> _logOut() async {
    setState(() {
      _isLogOut = true;
    });

    Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SignInPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xE4091522),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            color: const Color(0xE6091522),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(shape: BoxShape.circle),
              
                child: ClipOval(child: Image.asset(profilePic)),
            ),
          ),
          const ListItemDrawer(
            icon: Icons.person,
            text: 'Profile',
          ),
          const ListItemDrawer(
            icon: Icons.settings,
            text: 'Settings',
          ),
          ListItemDrawer(
            onPressed: () {
              _logOut();
            },
            icon: Icons.logout,
            text: 'Log out',
          ),
          if (_isLogOut)
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ListItemDrawer extends StatelessWidget {
  final IconData? icon;
  final String text;

  final VoidCallback? onPressed;
  const ListItemDrawer({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
      onPressed: onPressed,
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.6,
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            decoration: const BoxDecoration(
              border: BorderDirectional(
                bottom: BorderSide(
                  color: AppColors.greyColor,
                ),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    color: AppColors.whiteColor,
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    text,
                    style: AppTextStyle.smallText.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
