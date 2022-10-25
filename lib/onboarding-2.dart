import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Onboarding2 extends StatefulWidget {
  var function;
  Onboarding2({required this.function});

  @override
  State<Onboarding2> createState() => _Onboarding2State(function: function);
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  var function;
  _Onboarding2State({required this.function});
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: HexColor("#E7E8E3"),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors

          Image.asset("assets/image 1.png"),
          SizedBox(
            height: 76.h,
          ),
          Text(
            "Discover Your Type\nOf Plant",
            style: TextStyle(
                color: HexColor("#2D6936"),
                fontSize: 30,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 40.h,
          ),
          Text(
            "Tips N Tricks to grow a\n healthy plant",
            style: TextStyle(
              color: HexColor("#2D6936"),
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 100.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  height: 60.h,
                  width: 254.w,
                  decoration: BoxDecoration(
                      color: HexColor("47734D"),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Continue",
                      style: TextStyle(
                        color: HexColor("#FFFFFF"),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                onTap: function,
              ),
              SizedBox(
                width: 25.w,
              )
            ],
          )
        ],
      ),
    ));
  }
}
