import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';

class InputTextBirthDay extends StatefulWidget {
  const InputTextBirthDay(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.label,
      required this.icon,
     })
      : super(key: key);
  final String text;
  final double fontSize;
  final String label;
  final SvgPicture icon;


  @override
  _InputTextBirthDayState createState() => _InputTextBirthDayState();
}

class _InputTextBirthDayState extends State<InputTextBirthDay> {
   DateTime dateTime = DateTime(2022 , 02 , 23);

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
          const SizedBox(
            height: 6,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () async {
                     DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: dateTime,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100)
                         );
                     if (newDate == null) return;
                     setState(() => dateTime = newDate);
                    },
                    icon: widget.icon,
                  ),
                  label: Text(
                    widget.label,
                    style: const TextStyle(
                        color: kColorDark,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'NunitoSan',
                        fontSize: 15),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
