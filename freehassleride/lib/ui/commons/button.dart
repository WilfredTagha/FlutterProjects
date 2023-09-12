import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  final double h, w;
  final String text;
  final String named;
  const Button(
      {Key? key,
      required this.h,
      required this.w,
      required this.text,
      required this.named})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Container(
          height: h * (3 / 40),
          width: w * .9,
          decoration: BoxDecoration(
              color: Color(0xFFF7A12A),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 30,
            ),
          ))),
      onPressed: () {
        Navigator.of(context).pushNamed('/$named');
      },
    );
  }
}
