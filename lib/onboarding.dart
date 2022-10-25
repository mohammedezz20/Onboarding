import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:session/cubit/cubit.dart';

import 'cubit/state.dart';

class Onboarding extends StatefulWidget {
  var function;
  Onboarding({required this.function});

  @override
  State<Onboarding> createState() => _OnboardingState(function);
}

class _OnboardingState extends State<Onboarding> {
  var function;
  _OnboardingState(this.function);

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
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/onboarding1.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 83.h),
                  child: Text("Welcome",
                      style: TextStyle(
                        color: HexColor("#2D6936"),
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, top: 43.h),
                  child: Text("we’re glad that\nyou are here",
                      style: TextStyle(
                        color: HexColor("#2D6936"),
                        fontSize: 24,
                      )),
                ),
                SizedBox(
                  height: 450.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: function,
                        child: Container(
                          alignment: Alignment.center,
                          height: 60.h,
                          width: 254.w,
                          decoration: BoxDecoration(
                              color: HexColor("47734D"),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text("Lets get started",
                              style: TextStyle(
                                color: HexColor("#FFFFFF"),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        )),
                    SizedBox(
                      width: 25.w,
                    ),
                  ],
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
