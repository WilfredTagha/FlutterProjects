import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freehassleride/ui/commons/button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: h,
            width: w,
            decoration: const BoxDecoration(
              color: Color(0xFF19182C),
            ),
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Image.asset("assets/Vector.png"),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: h * (3 / 40),
                        width: w * .9,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: ' Name',
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              wordSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: h * (3 / 40),
                        width: w * .9,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: ' Email',
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              wordSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: h * (3 / 40),
                        width: w * .9,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: ' Password',
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              wordSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      const Text(
                        "Confirm Password",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        height: h * (3 / 40),
                        width: w * .9,
                        decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: ' Confirm PassWord',
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              wordSpacing: 5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.08,
                  ),
                  Button(
                    h: h,
                    w: w,
                    text: "Sign Up",
                    named: "home",
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
