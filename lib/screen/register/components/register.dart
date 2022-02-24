import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/screen/register/components/widget/header_widget.dart';
import '../../../constants.dart';
import 'widget/body_widget.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
         body : Container(
            decoration:  BoxDecoration(color: kBackgroundColor),
            child: Column(
              children:  [
                HeaderWidget(),
                BodyWidget()
              ],
            ),
          )
    )

    ;
  }
}

