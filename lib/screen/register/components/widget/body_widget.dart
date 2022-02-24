import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning_app/responsive/responsive_widget.dart';
import '../../../../constants.dart';
import 'btn_register.dart';
import 'check_box_widget.dart';
import 'imput_name.dart';
import 'input_email.dart';
import 'input_pass_word.dart';
import 'title_signin_signup.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      // final imagePermanent = await saveImagePermamently(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      print(e);
    }
  }

// Future<File>saveImagePermamently(String imagePath) async {
//     final directory = await getApplicationDocumentsDirectory();
//     final name = basenane(imagePath);
//     final image = File('${directory.path}/${name}');
//     return File(imagePath).copy(image.path);
// }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(kBorderRadius),
                topLeft: Radius.circular(kBorderRadius)),
            color: kColorWhite,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -4),
                blurRadius: 20,
                spreadRadius: 0,
                color: kColorShadow.withOpacity(0.2),
              )
            ]),
        child: Responsive.isMobile(context) ?
        Padding(
          padding: const EdgeInsets.only(left: kPadding , right: kPadding , top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      InputName(
                        fontSize: 15,
                        name: 'First name',
                        size: 10,
                      ),
                      InputName(
                        fontSize: 15,
                        name: 'Last name',
                        size: 10,
                      ),
                    ],
                  ),
                  const Spacer(),
                  image != null
                      ? Stack(children: [
                          Container(
                              height: 120,
                              width: 120,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: kColorPicture),
                              child: ClipOval(
                                  child: Image.file(
                                image!,
                                width: 120,
                                height: 120,
                                fit: BoxFit.cover,
                              ))),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Container(
                              height: 34,
                              width: 34,
                              decoration: const BoxDecoration(
                                  gradient: kColorPrimary,
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/icons/jam_camera.svg',
                                    color: kColorWhite,
                                  ),
                                  onPressed: () => pickImage()),
                            ),
                          )
                        ])
                      : Stack(children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: kColorPicture),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kColorLable.withOpacity(0.4)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(50),
                                      color: kColorDark),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Container(
                              height: 34,
                              width: 34,
                              decoration: const BoxDecoration(
                                  gradient: kColorPrimary,
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/icons/jam_camera.svg',
                                    color: kColorWhite,
                                  ),
                                  onPressed: () => pickImage()),
                            ),
                          )
                        ]),
                ],
              ),
              const InputEmail(size: 10,),
              const InputPassword(
                title: 'Mật khẩu',
                fontSize: 15,
                size: 10,
              ),
              const InputPassword(
                title: 'Nhập lại mật khẩu',
                fontSize: 15,
                size: 10,
              ),
              const CheckBoxWidget(
                textright: 'Privacy&Policy',
                textleft: 'I have read the',
              ),
              const SizedBox(height: 28),
              const BtnRegister(
                text: 'Đăng ký',
              ),
              const SizedBox(
                height: 43,
              ),
              TitleSingInSignUp(
                textleft: 'Already have an account?',
                textright: 'Sign in',
                onPress: () => Navigator.pop(context),
              )
            ],
          ),
        ) :
        Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      InputName(
                        fontSize: 15,
                        name: 'First name',
                        size: 20,
                      ),
                      InputName(
                        fontSize: 15,
                        name: 'Last name',
                        size: 20,
                      ),
                    ],
                  ),
                  const Spacer(),
                  image != null
                      ? Stack(children: [
                    Container(
                        height: 120,
                        width: 120,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kColorPicture),
                        child: ClipOval(
                            child: Image.file(
                              image!,
                              width: 120,
                              height: 120,
                              fit: BoxFit.cover,
                            ))),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 34,
                        width: 34,
                        decoration: const BoxDecoration(
                            gradient: kColorPrimary,
                            shape: BoxShape.circle),
                        child: IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/jam_camera.svg',
                              color: kColorWhite,
                            ),
                            onPressed: () => pickImage()),
                      ),
                    )
                  ])
                      : Stack(children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: kColorPicture),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kColorLable.withOpacity(0.4)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(50),
                                color: kColorDark),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 34,
                        width: 34,
                        decoration: const BoxDecoration(
                            gradient: kColorPrimary,
                            shape: BoxShape.circle),
                        child: IconButton(
                            icon: SvgPicture.asset(
                              'assets/icons/jam_camera.svg',
                              color: kColorWhite,
                            ),
                            onPressed: () => pickImage()),
                      ),
                    )
                  ]),
                ],
              ),
              const InputEmail( size: 20,),
              const InputPassword(
                title: 'Mật khẩu',
                fontSize: 15,
                size: 20,
              ),
              const InputPassword(
                title: 'Nhập lại mật khẩu',
                fontSize: 15,
                size: 20,
              ),
              const CheckBoxWidget(
                textright: 'Privacy&Policy',
                textleft: 'I have read the',
              ),
              const SizedBox(height: 48),
              const BtnRegister(
                text: 'Đăng ký',
              ),

              TitleSingInSignUp(
                textleft: 'Already have an account?',
                textright: 'Sign in',
                onPress: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
