import 'package:flutter/material.dart';

import '../../../../constants.dart';

class InputText extends StatefulWidget {
  const InputText({Key? key, required this.text, required this.fontSize, required this.label})
      : super(key: key);
  final String text;
  final double fontSize;
  final String label;

  @override
  _InputTextState createState() => _InputTextState();
}
class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
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
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText:
                widget.label,
              )),
            ),

        ],
      ),
    );
  }
}
