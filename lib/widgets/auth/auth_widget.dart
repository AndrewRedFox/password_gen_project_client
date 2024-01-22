import 'package:flutter/material.dart';
import 'package:password_gen_project/theme/app_button_style.dart';
import 'package:password_gen_project/theme/app_size_layout.dart';
import '../../client/client_api_auth.dart';
import '../../theme/app_colors.dart';
import 'dart:developer' as developer;

String _login = "";
String _password = "";

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView(
          children: [
            _HeaderWidget(),
            SizedBox(height: 15),
            _CenterWidget(),
            SizedBox(height: 15),
            _BottomWidget()
          ],
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeLayout.height * 0.18,
      //width: 353,
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      child: Text('PASSGEN',
        style: const TextStyle(
          color: AppColors.fontColor, 
          fontSize: 32,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _CenterWidget extends StatefulWidget {
  const _CenterWidget({super.key});

  @override
  State<_CenterWidget> createState() => __CenterWidgetState();
}

class __CenterWidgetState extends State<_CenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeLayout.height * 0.6,
      color: AppColors.backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 55.0, right: 55.0, top: 19),
            child: _TextFieldWidget(),
          ),
        ]),
    );
  }
}

class _TextFieldWidget extends StatefulWidget {
  const _TextFieldWidget({super.key});

  @override
  State<_TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<_TextFieldWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _changedLoginTextField(String text){
    _login = _loginTextController.text;
  }

  void _changedPasswordTextField(String text){
    _password = _passwordTextController.text;
  }

  @override
  Widget build(BuildContext context) {
    const _textStyle = TextStyle(color: AppColors.fontColor, fontSize: 12);
    const _textBorder = const InputDecoration( 
      border: OutlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), isCollapsed: true, focusColor: AppColors.buttonSecondColor,
      focusedBorder: OutlineInputBorder(),  
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Login',
            style: _textStyle,
            textAlign: TextAlign.start,
          ),
        TextField(
          controller: _loginTextController,
          decoration: _textBorder,
          onChanged: _changedLoginTextField,
          onSubmitted: _changedLoginTextField,
        ),
        SizedBox(height: 17,),
        Text('Password',
            style: _textStyle,
            textAlign: TextAlign.start,
          ),
        TextField(
          controller: _passwordTextController,
          decoration: _textBorder,
          obscureText: true,
          onChanged: _changedPasswordTextField,
          onSubmitted: _changedPasswordTextField,
        ),
      ],
    );
  }
}

class _BottomWidget extends StatefulWidget {
  const _BottomWidget({super.key});

  @override
  State<_BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<_BottomWidget> {
  void getData() async {
    /*try{ClientValidation.request(_login, _password);}
    catch(e){
      developer.log('Caught error: $e');
    }*/
    if(await ClientValidation.request(_login, _password)){
      Navigator.of(context).pushReplacementNamed('/listOfPassword');
    }
  }

  void registerRoute(){
    Navigator.of(context).pushNamed('/register');
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeLayout.height * 0.1,
      color: AppColors.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            style: AppButtonStyle.textButtonFirst,
            onPressed: registerRoute,
            child: Text('sign up', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: AppButtonStyle.textButtonSecond,
            onPressed: getData,
            child: Text('sign in', style: TextStyle(fontSize: 20)),
          ),
        ],
      )
    );
  }
}

