import 'package:flutter/material.dart';

import '../../../../constants.dart';
class InputEmail extends StatefulWidget {
   InputEmail({Key? key, required this.text, required this.fontSize}) : super(key: key);
  final String text;
  final double fontSize;
  final TextEditingController emailController = TextEditingController();
  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(
              color: kColorLable,
              fontSize: widget.fontSize,
              fontFamily: 'NunitoSan'),
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 47,
          alignment: Alignment.centerLeft,
          child: TextFormField(
            controller: widget.emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: kInputTextColor),
          ),
        )
      ],
    );
  }


}
