import 'package:flutter/material.dart';
import 'package:learning_app/responsive/responsive_widget.dart';
import 'package:learning_app/screen/information/information_screen.dart';
import 'package:learning_app/screen/login/componants/login.dart';
import 'package:learning_app/screen/login/login_screen.dart';
import 'package:learning_app/screen/profile/componants/widget/profile_infomation.dart';

import '../../../../constants.dart';
import '../../../../custom_page_router.dart';
import 'btn_logout.dart';
import 'custom_switch.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({Key? key}) : super(key: key);

  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
            left: kPaddingProfile, right: kPaddingProfile),
        width: double.maxFinite,
        color: kColorWhite,
        child: Column(
          children: [
            ProfileInformation(
              text: 'Thông tin cá nhân',
              onPress: () => Navigator.push(context,
                  CustomPageRouter(child: InformationScreen(), direction: AxisDirection.left , )),
            ),
            ProfileInformation(
              text: 'Lịch sử giao dịch',
              onPress: () {},
            ),
            ProfileInformation(
              text: 'Hướng dẫn và thanh toán',
              onPress: () {},
            ),
            ProfileInformation(
              text: 'Thay đổi mật khẩu',
              onPress: () {},
            ),
            CustomSwitchs(
              text: 'Thông báo',
            ),
            ProfileInformation(
              text: 'Hỗ trợ',
              onPress: () {},
            ),
            Responsive.isMobile(context)
                ? SizedBox(
                    height: 50,
                  )
                : SizedBox(
                    height: 100,
                  ),
            BtnLogOut(
              text: 'Đăng xuất',
              onPress: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const LoginScreen())),
            )
          ],
        ),
      ),
    );
  }
}
