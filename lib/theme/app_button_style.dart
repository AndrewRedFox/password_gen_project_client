// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppButtonStyle {
  static final ButtonStyle textButtonFirst = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppColors.buttonFirstColor),
    foregroundColor: MaterialStatePropertyAll(Colors.white),
    minimumSize: MaterialStateProperty.all(Size(144, 35)),
    elevation: MaterialStateProperty.all(5),
  );
  static final ButtonStyle textButtonSecond = ButtonStyle(
    minimumSize: MaterialStateProperty.all(Size(144, 35)),
    backgroundColor: MaterialStateProperty.all(AppColors.buttonSecondColor),
    foregroundColor: MaterialStatePropertyAll(Colors.white),
    elevation: MaterialStateProperty.all(5),
  );

}