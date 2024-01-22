import 'package:flutter/material.dart';
import 'package:password_gen_project/theme/app_colors.dart';

abstract class AppTextField{
  static var decorator = const InputDecoration( 
      border: OutlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), isCollapsed: true, focusColor: AppColors.buttonSecondColor,
      focusedBorder: OutlineInputBorder(),  
    );
}