import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:session/cubit/cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'cubit/state.dart';
import 'onboarding 3.dart';
import 'onboarding-2.dart';
import 'onboarding.dart';

class mainlayout extends StatefulWidget {
  const mainlayout({Key? key}) : super(key: key);

  @override
  State<mainlayout> createState() => _mainlayoutState();
}

class _mainlayoutState extends State<mainlayout> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCupit(),
      child: BlocConsumer<AppCupit, AppState>(
        listener: ((context, state) {}),
        builder: ((context, state) {
          var cubit = AppCupit.get(context);
          var function1 = () {
            cubit.changepage(1);
            cubit.controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          };
          return Scaffold(
              body: PageView(
                controller: cubit.controller,
                children: [
                  Onboarding(function: function1),
                  Onboarding2(function: function1),
                  const Onboarding3(),
                ],
              ),
              bottomSheet: Container(
                height: 120.h,
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: cubit.controller,
                  count: 3,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 60.w,
                      height: 12.h,
                      color: HexColor("37623D"),
                      rotationAngle: 180,
                      verticalOffset: -10,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    dotDecoration: DotDecoration(
                      width: 35.w,
                      height: 12.h,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      verticalOffset: 0,
                    ),
                    spacing: 15.0.w,
                  ),
                  onDotClicked: (i) {
                    cubit.changepage(i);
                    cubit.controller.animateToPage(i,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeOutBack);
                  },
                ),
              ));
        }),
      ),
    );
  }
}
