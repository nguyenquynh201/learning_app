import 'package:flutter/material.dart';

import '../../../../constants.dart';
class CategoriesHistory extends StatefulWidget {
  const CategoriesHistory({Key? key}) : super(key: key);

  @override
  _CategoriesHistoryState createState() => _CategoriesHistoryState();
}

class _CategoriesHistoryState extends State<CategoriesHistory> {
  List<String> listHistory = [
    "Chưa thanh toán",
    "Đã thanh toán",
    " Đã hoàn thành"
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listHistory.length,
            itemBuilder: (context, index) => buildCategoriesHistory(index)));
  }

  Widget buildCategoriesHistory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPaddingProfile, vertical: kPaddingProfile),
        child: Column(
          children: [
            Text(
              listHistory[index],
              style: TextStyle(
                  color: selectIndex == index
                      ? kColorDark
                      : kColorDark.withOpacity(0.5),
                  fontFamily: 'NunitoSan',
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              height: 3,
              width: MediaQuery.of(context).size.width * 0.3,
              color: selectIndex == index ? kTextColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}