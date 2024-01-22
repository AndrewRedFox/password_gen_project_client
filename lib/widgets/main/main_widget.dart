import 'package:flutter/material.dart';
import 'package:password_gen_project/client/client_api_user_get_info.dart';
import 'package:password_gen_project/theme/app_colors.dart';
import 'dart:developer' as developer;

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) { auth();});
    super.initState();
  }

  void auth() async {
    if(await UserGetInfo.request()){
      Navigator.of(context).pushReplacementNamed("/listOfPassword");
    } else{
      Navigator.of(context).pushReplacementNamed("/auth");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
      ),
    );
  }
}