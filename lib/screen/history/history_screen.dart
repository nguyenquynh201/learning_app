import 'package:flutter/material.dart';

import 'componants/history.dart';
class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: History(),
    );
  }
}
