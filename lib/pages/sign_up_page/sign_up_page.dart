import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/common/constants/text_style.dart';
import 'package:cosmic_app/pages/sign_in_page/sign_in_page.dart';
import 'package:cosmic_app/widgets/commom%20widgets/background.dart';
import 'package:flutter/material.dart';
import '../../widgets/commom widgets/circle_btn.dart';
import '../../widgets/commom widgets/custom_text_form_field.dart';
import '../../widgets/commom widgets/gradient_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
                child: Image.asset(logo),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(50, 40, 50, 20),
                decoration: const BoxDecoration(
                  color: AppColors.lowDark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sign Up',
                            style: AppTextStyle.bigText
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CustomTextFormField(
                          hintText: 'Username',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const CustomTextFormField(
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const CustomTextFormField(
                          hintText: 'Password',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 25.0,
                        ),
                        const CustomTextFormField(
                          hintText: 'Confirm password',
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GradientButton(
                          child: Text(
                            'Sign Up',
                            style: AppTextStyle.mediumText
                                .copyWith(color: AppColors.whiteColor),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Or sign up using',
                          style: AppTextStyle.soSmall.copyWith(
                            color: AppColors.greyColor,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleButton(
                              widget: Image.asset(twitterIcon),
                              edgeInsets: const EdgeInsets.all(15),
                            ),
                            CircleButton(
                              widget: Image.asset(facebookIcon),
                              edgeInsets: const EdgeInsets.all(12),
                            ),
                            CircleButton(
                              widget: Image.asset(googleIcon),
                              edgeInsets: const EdgeInsets.all(10),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Alredy have an account?",
                              style: AppTextStyle.soSmall
                                  .copyWith(color: AppColors.greyColor),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignInPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign in',
                                style: AppTextStyle.soSmall.copyWith(
                                    color: AppColors.lightBlue,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
