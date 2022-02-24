import 'package:flutter/material.dart';

import '../../../../constants.dart';
class DifferentWidget extends StatelessWidget {
  const DifferentWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        text,
        style: TextStyle(
            color: kColorLable,
            fontSize: 18,
            fontFamily: 'NunitoSan',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
