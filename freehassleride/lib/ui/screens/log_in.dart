import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freehassleride/ui/commons/button.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
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
                  height: h * 0.07,
                ),
                const Text(
                  "Log In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: h * 0.07,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
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
                      height: h * 0.03,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
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
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: h * 0.08,
                ),
                Button(
                  h: h,
                  w: w,
                  text: "Log In",
                  named: "home",
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Don't Have an Account?",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/signup");
                        },
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(color: Color(0xFFF7A12A), fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
