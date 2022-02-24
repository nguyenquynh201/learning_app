import 'package:flutter/material.dart';

import '../../../../constants.dart';

class BtnLogin extends StatelessWidget {
  const BtnLogin({Key? key, required this.onPress}) : super(key: key);
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
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
          child: const Text(
            'Đăng Nhập ',
            style: TextStyle(
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
