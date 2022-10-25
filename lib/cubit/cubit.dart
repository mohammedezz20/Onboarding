import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:session/cubit/state.dart';

import '../onboarding 3.dart';
import '../onboarding-2.dart';
import '../onboarding.dart';

class AppCupit extends Cubit<AppState> {
  AppCupit() : super(InitState());
  static AppCupit get(context) => BlocProvider.of(context);
  final controller = PageController();

  // List<Widget> Screens = [
  //   const Onboarding(),
  //   const Onboarding2(),
  //   const Onboarding3(),
  // ];
  int initialpage = 0;

  void changepage(int i) {
    initialpage = i;
    emit(ChangeIndicator());
  }
}

Widget dot({
  required double width,
  required double height,
  required bool isactive,
  var function,
  required String color,
  required double value,
}) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.all(value),
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: HexColor(color)),
    ),
    onTap: function,
  );
}
