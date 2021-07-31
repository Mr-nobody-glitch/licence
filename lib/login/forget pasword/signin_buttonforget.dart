import 'package:flutter/material.dart';

class SigninButtonf extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const SigninButtonf({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 180.0,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xffFF2400),
              Color(0xffFF2400),


            ],
          )),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}