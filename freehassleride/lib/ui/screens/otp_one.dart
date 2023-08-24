import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freehassleride/ui/commons/button.dart';

class OtpOne extends StatelessWidget {
  const OtpOne({Key? key}) : super(key: key);

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
              height: h * 0.05,
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
              "Phone Verification",
              style: TextStyle(
                color: Color(0xFFD9D9D9),
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            const SizedBox(
              width: 250,
              child: Text(
                "   We need to register \nyour phone before we \n          get started",
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Container(
              height: h * (3 / 40),
              width: w * .9,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(left: 15),
                    child: Center(
                      child: Image.asset(
                        'assets/flag.png',
                      ),
                    )),
                VerticalDivider(
                  width: h * 2 / 45,
                  thickness: 1.5,
                  color: Color(0xFF19182C),
                ),
                Container(
                  height: h * 3 / 45,
                  width: w * .6,
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Phone',
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        wordSpacing: 5,
                      ),
                    ),
                  ),
                )

                // Icon(AssetImage('assetName'))
              ]),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            Button(
              h: h,
              w: w,
              text: "Get Code",
            ),
          ]),
        ),
      ),
    );
  }
}
