import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPageRouter extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRouter({required this.child, required this.direction})
      : super(
            transitionDuration: Duration(seconds: 1),
            reverseTransitionDuration: Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) => child);
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
          position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
              .animate(animation),
          child: child);
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up :
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
    }
  }
}
