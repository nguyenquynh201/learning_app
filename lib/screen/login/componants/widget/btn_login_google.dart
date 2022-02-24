import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants.dart';

class BtnGoogle extends StatelessWidget {
  const BtnGoogle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: TextButton(
        onPressed: () {},
        autofocus: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/icons/google.svg'),
            Text(
              'CONTINUE WITH GOOGLE ',
              style: TextStyle(
                  color: kColorDark,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontSize: 15,
                  fontFamily: 'NunitoSan'),
            ),
          ],
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color?>(kColorDark),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: kColorDark)))),
      ),
    );
  }
}
