import 'package:flutter/material.dart';

import '../../../../constants.dart';
class InputName extends StatefulWidget {
  const InputName({Key? key, required this.name, required this.fontSize, required this.size})
      : super(key: key);
  final String name;
  final double fontSize;
  final double size;
  @override
  _InputNameState createState() => _InputNameState();
}

class _InputNameState extends State<InputName> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.name,
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
              width: MediaQuery.of(context).size.width *0.4,
              alignment: Alignment.centerLeft,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: kInputTextColor),
              ),
            ),
            SizedBox(
              height: widget.size,
            )
          ],
        )
      ],
    );
  }
}
