import 'package:flutter/material.dart';

import 'componants/infomation.dart';
class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Information(),
    );
  }
}
