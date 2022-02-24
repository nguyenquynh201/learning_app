import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
class BtnFaceBook extends StatelessWidget {
  const BtnFaceBook({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,height: 50,
          decoration: BoxDecoration(
            color: kColorFacebook,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/icons/logo-fb-simple.svg'),
               Text(
                'CONTINUE WITH FACEBOOK',
                style: TextStyle(
                    color: kColorWhite,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    fontFamily: 'NunitoSan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
