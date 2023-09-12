import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freehassleride/ui/commons/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      decoration: const BoxDecoration(
        color: Color(0xFF19182C),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: h * 0.05,
          ),
          const Text(
            "WELCOME",
            style: TextStyle(
              fontSize: 30,
              // fontStyle: FontStyle.italic,
              color: Color(0xFFD9D9D9),
            ),
          ),
          SizedBox(
            height: h * 0.2,
          ),
          Button(
            h: h,
            w: w,
            text: "Welcome",
            named: "otpone",
          ),
        ],
      ),
    ));
  }
}
