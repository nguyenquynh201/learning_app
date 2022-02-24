import 'package:flutter/material.dart';

import 'components/register.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static String routeName = './register';
  @override
  Widget build(BuildContext context) {
    return Register();
  }
}
