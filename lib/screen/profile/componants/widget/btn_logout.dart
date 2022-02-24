import 'package:flutter/material.dart';

import '../../../../constants.dart';
class BtnLogOut extends StatelessWidget {
  const BtnLogOut({Key? key, required this.text, required this.onPress}) : super(key: key);
  final String text;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Align(
        alignment: Alignment.center,
        child: Container(
        margin: const EdgeInsets.only(left: kPadding , right: kPadding),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,height: 45,
          decoration: BoxDecoration(
              gradient: kColorPrimary,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4),
                    color: kColorShadow.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 0)
              ]),
          child:  Text(
            text,
            style: const TextStyle(
                color: kColorWhite,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 18,
                fontFamily: 'NunitoSan'),
          ),
        ),
      ),
    );
  }
}
