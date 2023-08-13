import 'dart:async';
import 'package:cosmic_app/common/constants/colors.dart';
import 'package:cosmic_app/common/constants/images.dart';
import 'package:cosmic_app/common/constants/text_style.dart';
import 'package:cosmic_app/pages/home_page/home_page.dart';
import 'package:cosmic_app/pages/sign_up_page/sign_up_page.dart';
import 'package:cosmic_app/widgets/commom%20widgets/background.dart';
import 'package:flutter/material.dart';
import '../../widgets/commom widgets/circle_btn.dart';
import '../../widgets/commom widgets/custom_text_form_field.dart';
import '../../widgets/commom widgets/gradient_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({
    super.key,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  bool _user = false;

  bool _password = false;

  bool _errorTextEmail = false;
  bool _errorTextPassword = false;

  final TextEditingController _textEmail = TextEditingController();
  final TextEditingController _textPassword = TextEditingController();
  bool isLoading = false;

  Future<void> _statusLogin() async {
    setState(() {
      isLoading = true;
    });

    Timer(
      const Duration(seconds: 4),
      () {
        setState(() {
          isLoading = false;
        });

        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    );
  }

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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign in',
                          style: AppTextStyle.bigText
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              controller: _textEmail,
                              errorText:
                                  _errorTextEmail ? 'Email inválido' : null,
                              validator: (value) {
                                if (value == 'jhonatan@gmail.com') {
                                  _user = true;
                                } else {
                                  setState(() {
                                    _errorTextEmail = true;
                                    _textEmail.clear();
                                  });
                                }
                                return null;
                              },
                              hintText: 'Email',
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            CustomTextFormField(
                              controller: _textPassword,
                              errorText:
                                  _errorTextPassword ? 'Senha inválida' : null,
                              validator: (value) {
                                if (value == '123456789') {
                                  _password = true;
                                } else {
                                  setState(() {
                                    _errorTextPassword = true;
                                    _textPassword.clear();
                                  });
                                }
                                return null;
                              },
                              obscureText: true,
                              hintText: 'Password',
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot password?',
                            style: AppTextStyle.smallText
                                .copyWith(color: AppColors.lightBlue),
                          ),
                        ),
                      ),
                      GradientButton(
                        onTap: () {
                          _formKey.currentState!.validate();
                          if (_user && _password) {
                            _statusLogin();
                          }
                        },
                        child: isLoading
                            ? SizedBox(width: 30,height: 30,child: const CircularProgressIndicator())
                            : Text(
                                'Sign in',
                                style: AppTextStyle.mediumText
                                    .copyWith(color: AppColors.whiteColor),
                              ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Or sign in using',
                        style: AppTextStyle.soSmall.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                            "Don't have an account?",
                            style: AppTextStyle.soSmall
                                .copyWith(color: AppColors.greyColor),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign Up',
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
          ],
        ),
      ),
    );
  }
}
