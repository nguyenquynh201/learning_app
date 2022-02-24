import 'package:flutter/material.dart';
import 'package:learning_app/screen/login/componants/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Login(),
    );
  }
}

