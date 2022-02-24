import 'package:flutter/material.dart';

import '../../../../constants.dart';
class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 174,
          decoration:const BoxDecoration(
              color: kColorWhite,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 36),
          child: RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: "Hi Quỳnh\n",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'NunitoSan')),
                TextSpan(
                    text: "Bạn có đang xem \nthông tin cá nhân ",
                    style: TextStyle(
                        color: kColorDark,
                        fontFamily: 'NunitoSan',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 18))
              ])),
        ),
        Positioned(
          right: 20,
          top: -60,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                  image: AssetImage('assets/images/quynhh.jpg'),
                  fit: BoxFit.cover),
              border: Border.all(
                  width: 3, color: kColorWhite.withOpacity(0.7)),
            ),
          ),
        )
      ],
    );
  }
}
