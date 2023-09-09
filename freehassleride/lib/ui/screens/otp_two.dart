import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freehassleride/ui/commons/button.dart';

class OtpTwo extends StatelessWidget {
  const OtpTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          decoration: const BoxDecoration(
            color: Color(0xFF19182C),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: h * 0.07,
            ),
            Container(
              height: w * 0.5,
              width: w * 0.5,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset('assets/phone.png'),
            ),
            SizedBox(
              height: h * 0.07,
            ),
            const Text(
              "A verifcation code has been\n       sent to 654373627",
              style: TextStyle(
                color: Color(0xFFD9D9D9),
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: h * (3 / 40),
                  width: w * 0.85 / 6,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: h * (3 / 40),
                  width: w * 0.85 / 6,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: h * (3 / 40),
                  width: w * 0.85 / 6,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: h * (3 / 40),
                  width: w * 0.85 / 6,
                  decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Button(
              h: h,
              w: w,
              text: "Verify",
            ),
            SizedBox(
              height: h * 0.05,
            ),
            SizedBox(
              width: w * .88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "retry in 30secs",
                    style: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Edit Num",
                    style: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
