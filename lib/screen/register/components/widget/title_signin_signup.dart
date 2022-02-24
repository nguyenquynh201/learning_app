import 'package:flutter/material.dart';
import 'package:learning_app/responsive/responsive_widget.dart';
import '../../../../constants.dart';
class TitleSingInSignUp extends StatelessWidget {
  const TitleSingInSignUp({Key? key, required this.textleft, required this.textright, required this.onPress}) : super(key: key);
  final String textleft ;
  final String textright;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) ?  Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(textleft ,style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color : kColorDark ,
              fontFamily: 'NunitoSan',
              fontSize: 15
          )),
          SizedBox(width: 3,),
          GestureDetector(
            onTap: onPress,
            child: Text(textright , style: TextStyle(
                fontFamily: 'NunitoSan',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: kTextColor)),
          ),
        ],
      ),
    ) :
      Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textleft ,style: TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color : kColorDark ,
                fontFamily: 'NunitoSan',
                fontSize: 15
            )),
            SizedBox(width: 3,),
            GestureDetector(
              onTap: onPress,
              child: Text(textright , style: TextStyle(
                  fontFamily: 'NunitoSan',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: kTextColor)),
            )

          ],
        ),
      ),
    );
  }
}
