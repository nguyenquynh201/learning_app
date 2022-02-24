import 'package:flutter/material.dart';
import 'package:learning_app/responsive/responsive_widget.dart';
import 'package:learning_app/screen/login/componants/widget/btn_login.dart';
import 'package:learning_app/screen/login/componants/widget/btn_login_facebook.dart';
import 'package:learning_app/screen/login/componants/widget/btn_login_google.dart';
import 'package:learning_app/custom_page_router.dart';
import 'package:learning_app/screen/login/componants/widget/different_widget.dart';
import 'package:learning_app/screen/login/componants/widget/forgot_btn_pass.dart';
import 'package:learning_app/screen/login/componants/widget/input_email.dart';
import 'package:learning_app/screen/login/componants/widget/input_pass_word.dart';
import 'package:learning_app/screen/login/componants/widget/title_signin_signup.dart';
import 'package:learning_app/screen/profile/profile_screen.dart';
import 'package:learning_app/screen/register/register_screen.dart';
import '../../../constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Container(
            width: double.infinity,
            decoration: BoxDecoration(color: kBackgroundColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Chào mừng \nbạn đã trở lại',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'NunitoSan',
                      fontSize: kFontSize,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(kBorderRadius),
                            topLeft: Radius.circular(kBorderRadius)),
                        color: kColorWhite,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, -4),
                            blurRadius: 20,
                            color: kColorShadow.withOpacity(0.2),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputEmail(
                            text: 'Email',
                            fontSize: 15,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const InputPassword(
                            text: 'Mật khẩu',
                            fontSize: 15,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          buildForgotPassBtn(),
                          SizedBox(
                            height: 38,
                          ),
                          BtnLogin(
                            onPress: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => ProfileScreen())),
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                          const DifferentWidget(text: 'Or'),
                          const SizedBox(
                            height: 27,
                          ),
                          // BtnFaceBook(),
                          const BtnFaceBook(),
                          const SizedBox(
                            height: 18,
                          ),
                          const BtnGoogle(),
                          TitleSingInSignUp(
                            onPress: () => Navigator.push(
                                context,
                                CustomPageRouter(
                                    child: RegisterScreen(),
                                    direction: AxisDirection.left)),
                            textright: 'Sign Up',
                            textleft: "Don't have an account?",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: double.infinity,
            decoration: BoxDecoration(color: kBackgroundColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Chào mừng \nbạn đã trở lại',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kTextColor,
                      fontFamily: 'NunitoSan',
                      fontSize: kFontSize,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(kBorderRadius),
                            topLeft: Radius.circular(kBorderRadius)),
                        color: kColorWhite,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, -4),
                            blurRadius: 20,
                            color: kColorShadow.withOpacity(0.2),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputEmail(
                            text: 'Email',
                            fontSize: 15,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const InputPassword(
                            text: 'Mật khẩu',
                            fontSize: 15,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          buildForgotPassBtn(),
                          SizedBox(
                            height: 48,
                          ),
                          BtnLogin(
                            onPress: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (_) => ProfileScreen())),
                          ),
                          const SizedBox(
                            height: 47,
                          ),
                          const DifferentWidget(text: 'Or'),
                          const SizedBox(
                            height: 52,
                          ),
                          // BtnFaceBook(),
                          const BtnFaceBook(),
                          const SizedBox(
                            height: 18,
                          ),
                          const BtnGoogle(),
                          TitleSingInSignUp(
                            onPress: () => Navigator.push(
                                context,
                                CustomPageRouter(
                                    child: RegisterScreen(),
                                    direction: AxisDirection.left)),
                            textright: 'Sign Up',
                            textleft: "Don't have an account?",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
