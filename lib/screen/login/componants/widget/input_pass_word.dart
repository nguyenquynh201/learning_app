import 'package:flutter/material.dart';

import '../../../../constants.dart';
class InputPassword extends StatefulWidget {
  const InputPassword({Key? key, required this.text, required this.fontSize}) : super(key: key);
  final String text;
  final double fontSize;
  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool isVisibility = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
              color: kColorLable,
              fontSize:  widget.fontSize,
              fontFamily: 'NunitoSan'),
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 47,
          alignment: Alignment.centerLeft,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: isVisibility,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                filled: true,
                labelStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'NunitoSan',
                    fontWeight: FontWeight.w600,
                    color: kColorDark),
                fillColor: kInputTextColor,
                suffixIcon: IconButton(
                  icon: !isVisibility
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isVisibility = !isVisibility;
                    });
                  },
                )),
          ),
        )
      ],
    );
  }


}
