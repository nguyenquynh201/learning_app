import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';
import 'package:learning_app/screen/profile/componants/widget/body_profile.dart';
import 'package:learning_app/screen/profile/componants/widget/header_profile.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          const SizedBox(
            height: 43,
          ),
          const HeaderProfile(),
          const SizedBox(height: 14),
          const BodyProfile()
        ],
      ),
    );
  }
}
