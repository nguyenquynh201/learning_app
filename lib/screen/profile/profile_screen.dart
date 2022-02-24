import 'package:flutter/material.dart';
import 'componants/profile.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Profile(),
    );
  }
}
