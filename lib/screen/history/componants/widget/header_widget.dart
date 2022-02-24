import 'package:flutter/material.dart';

import '../../../../constants.dart';
class HeaderHistory extends StatelessWidget {
  const HeaderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.centerLeft,
      children: [
        IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: kColorDark,
            )),
        const Center(
          child: Text(
            'LỊCH SỬ GIAO DỊCH',
            style: TextStyle(
                fontFamily: 'NunitoSan',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: kColorDark,
                fontSize: 18),
          ),
        )
      ],
    );
  }
}
