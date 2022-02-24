import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/constants.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget(
      {Key? key, required this.textleft, required this.textright})
      : super(key: key);
  final String textleft;
  final String textright;

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Theme(
          data: Theme.of(context).copyWith(unselectedWidgetColor: kColorDark),
          child: Checkbox(
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            value: isChecked,
            activeColor: kTextColor,
            checkColor: kColorWhite,
          ),
        ),
        Text(
           widget.textleft,
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'NunitoSan',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300 , color: Colors.black)),
        SizedBox(width: 3,),
        Text(
            widget.textright,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'NunitoSan',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600  ,color: kTextColor)),
      ],
    );
  }
}
