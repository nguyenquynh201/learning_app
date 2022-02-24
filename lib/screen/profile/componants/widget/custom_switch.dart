
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/responsive/responsive_widget.dart';

import '../../../../constants.dart';

class CustomSwitchs extends StatefulWidget {
  CustomSwitchs({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitchs> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) ? Column(
      children: [
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: kColorDark,
                  fontFamily: 'NunitoSan'),
            ),
           SizedBox(
               height: 24,
             width: 40,
             child: CupertinoSwitch(activeColor: kTextColor,value: isSwitch, onChanged: (value) {
               setState(() {
                 isSwitch = value;
               });
             }),
           )
           //  LiteRollingSwitch(
           //    value: isSwitch,
           //    textOn: 'On',
           //    textOff: 'Off',
           //    onChanged: (bool position) {
           //      isSwitch = position;
           //    },
           //  )
          ],
        ),
        SizedBox(height: 15,),
       Container(
         height: 1,
         color: kColorLable.withOpacity(0.3),
       )
      ],
    ) : Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: kColorDark,
                  fontFamily: 'NunitoSan'),
            ),
            SizedBox(
              height: 24,
              width: 40,
              child: CupertinoSwitch(activeColor: kTextColor,value: isSwitch, onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              }),
            )
            //  LiteRollingSwitch(
            //    value: isSwitch,
            //    textOn: 'On',
            //    textOff: 'Off',
            //    onChanged: (bool position) {
            //      isSwitch = position;
            //    },
            //  )
          ],
        ),
        SizedBox(height: 20,),
        Container(
          height: 1,
          color: kColorLable.withOpacity(0.3),
        )
      ],
    );
  }
}
