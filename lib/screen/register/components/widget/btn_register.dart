import 'package:flutter/material.dart';

import '../../../../constants.dart';

class BtnRegister extends StatelessWidget {
  const BtnRegister({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.6,height: 45,
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
