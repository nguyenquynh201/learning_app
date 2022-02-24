import 'package:flutter/material.dart';
import '../../../../constants.dart';
class InputEmail extends StatefulWidget {
  const InputEmail({Key? key, required this.size}) : super(key: key);
  final double size;
  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return  buildInputTextEmail(text: 'Email', fontSize: 15);
  }
  Widget buildInputTextEmail(
      {required String text, required double fontSize}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
                color: kColorLable,
                fontSize: fontSize,
                fontFamily: 'NunitoSan'),
          ),
          const SizedBox(
            height: 6
          ),
          Container(
            height: 47,
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
          SizedBox(height: widget.size)
        ],
      );
}
