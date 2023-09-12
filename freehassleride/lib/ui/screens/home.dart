import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(4.1559658, 9.2632243);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Color(0xFFD9D9D9),
        height: h,
        width: w,
        child: Stack(
          children: [
            const GoogleMap(
                initialCameraPosition: CameraPosition(target: LatLng(0, 0))),
            Positioned(
              top: 50,
              right: 15,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF19182C),
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF19182C),
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                      "N",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 20,
                right: 50,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                      color: Color(0xFF19182C),
                      borderRadius: BorderRadius.circular(10)),
                  height: 50,
                ))
          ],
        ),
      ),
    ));
  }
}
