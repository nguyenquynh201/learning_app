import 'package:flutter/material.dart';

import '../../../../constants.dart';
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: () => Navigator.pop(context),
            ),
            const Center(
              child: Text(
                'Hãy tạo \ntài khoản mới',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kTextColor,
                    fontFamily: 'NunitoSan',
                    fontSize: kFontSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30,),
      ],
    );
  }
}
