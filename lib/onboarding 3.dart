import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:session/cubit/cubit.dart';

import 'cubit/state.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contest) => AppCupit(),
      child: BlocConsumer<AppCupit, AppState>(
        listener: ((context, state) {}),
        builder: (context, state) {
          var cubit = AppCupit.get(context);
          return Scaffold(
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: HexColor("#E7E8E3")),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors

                  Image.asset("assets/image 3.png"),
                  SizedBox(
                    height: 42.h,
                  ),
                  Text(
                    "Connect With Other\nPlant Lovers",
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
                    "Join A Community",
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
                        child: Text("Create Account",
                            style: TextStyle(
                              color: HexColor("#FFFFFF"),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                      SizedBox(
                        width: 25.w,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
