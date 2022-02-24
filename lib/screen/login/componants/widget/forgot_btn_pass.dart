import 'package:flutter/material.dart';
import '../../../../constants.dart';
Widget buildForgotPassBtn() => GestureDetector(
  child: Container(
    alignment: Alignment.center,
    child: Text(
      'Forgot password?',
      style: TextStyle(
          color: kTextColor,
          fontSize: 15,
          fontFamily: 'NunitoSan',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600),
    ),
  ),
);