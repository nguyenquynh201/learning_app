import 'package:flutter/material.dart';
import 'package:learning_app/responsive/responsive_widget.dart';

import '../../../../constants.dart';
class ProfileInformation extends StatelessWidget {
  const ProfileInformation({Key? key, required this.text, required this.onPress}) : super(key: key);
  final String text;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) ?  GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style:const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: kColorDark,
                    fontFamily: 'NunitoSan'),
              ),
              Icon(Icons.keyboard_arrow_right , color: kTextColor,)
            ],
          ),
          const SizedBox(height: 15,),
          Container(
            height: 1,
            color: kColorLable.withOpacity(0.3),
          )
        ],
      ),
    ) :
    GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style:const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    color: kColorDark,
                    fontFamily: 'NunitoSan'),
              ),
              Icon(Icons.keyboard_arrow_right , color: kTextColor,)
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            height: 1,
            color: kColorLable.withOpacity(0.3),
          )
        ],
      ),
    ) ;
  }
}
