import 'package:flutter/material.dart';
import 'package:password_gen_project/client/client_api_user_update_info.dart';
import 'package:password_gen_project/client/client_generation_password.dart';
import 'package:password_gen_project/client/client_list.dart';
import 'package:password_gen_project/theme/app_button_style.dart';
import 'package:password_gen_project/theme/app_colors.dart';
import 'package:password_gen_project/theme/app_size_layout.dart';
import 'package:password_gen_project/theme/app_textfield_decorator.dart';
import 'dart:developer' as developer;

String _login = "";
String _password = "";
String _appName = "";
bool _isDigits = false;
bool _isSymbols = false;
bool _isUpperCase = false;
bool _isLowerCase = false;
double _sliderCount = 2.0;
late var _passwordTextController;

class GenerationPasswordWidget extends StatefulWidget {
  const GenerationPasswordWidget({super.key});

  @override
  State<GenerationPasswordWidget> createState() => _GenerationPasswordWidgetState();
}

class _GenerationPasswordWidgetState extends State<GenerationPasswordWidget> {

  @override
  void initState() {
    _passwordTextController = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
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

class _HeaderWidget extends StatefulWidget {
  const _HeaderWidget({super.key});

  @override
  State<_HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<_HeaderWidget> {
  void _changedPasswordTextField(String text){
    setState(() {
      _password = _passwordTextController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: AppSizeLayout.height * 0.18,
      //width: 353,
      color: AppColors.backgroundColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Password:',
            style: const TextStyle(
              color: AppColors.fontColor, 
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),
          TextField(
            decoration: AppTextField.decorator,
            onChanged: _changedPasswordTextField,
            onSubmitted: _changedPasswordTextField,
            controller: _passwordTextController,
          ),
        ],
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
    final _loginTextController = TextEditingController();
    final _applicationNameTextController = TextEditingController();
    final _checkBoxColor = MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                    return Colors.orange.withOpacity(.6);});

    void _changedLoginTextField(String text){
    _login = _loginTextController.text;
  }

  void _changedApplicationNameTextField(String text){
    _appName = _applicationNameTextController.text;
  }

  void _digits(bool? value){
    setState(() {
      _isDigits = value!;
    });
  }

  void _symbols(bool? value){
    setState(() {
      _isSymbols = value!;
    });
  }

  void _upperCase(bool? value){
    setState(() {
      _isUpperCase = value!;
    });
  }

  void _lowerCase(bool? value){
    setState(() {
      _isLowerCase = value!;
    });
  }

  void _sliderChange(double? newRating){
    setState(() {
      _sliderCount = newRating!;
    });
    developer.log(_sliderCount.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizeLayout.height * 0.62,
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Application:", style: TextStyle(color: AppColors.buttonFirstColor, fontSize: 14),),
            TextField(
              decoration: AppTextField.decorator,
              onChanged: _changedApplicationNameTextField,
              onSubmitted: _changedApplicationNameTextField,
              controller: _applicationNameTextController,
            ),
            SizedBox(height: 5,),
            Text("Login:", style: TextStyle(color: AppColors.buttonFirstColor, fontSize: 14),),
            TextField(
              decoration: AppTextField.decorator,
              onChanged: _changedLoginTextField,
              onSubmitted: _changedLoginTextField,
              controller: _loginTextController,
            ),
            SizedBox(height: 10,),
            Slider(
              value: _sliderCount,
              onChanged: _sliderChange,
              min: 1,
              max: 50,
              divisions: 49,
              label: "${_sliderCount.toInt()}",
              thumbColor: AppColors.buttonSecondColor,
              activeColor: AppColors.buttonSecondColor,
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Digits", style: TextStyle(color: AppColors.buttonFirstColor, fontSize: 20),),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: _isDigits,
                    onChanged: _digits,
                    fillColor: _checkBoxColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Symbols", style: TextStyle(color: AppColors.buttonFirstColor, fontSize: 20),),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: _isSymbols,
                    onChanged: _symbols,
                    fillColor: _checkBoxColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upper case", style: TextStyle(color: AppColors.buttonFirstColor, fontSize: 20),),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: _isUpperCase,
                    onChanged: _upperCase,
                    fillColor: _checkBoxColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Lower case", style: TextStyle(color: AppColors.buttonFirstColor, fontSize: 20),),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: _isLowerCase,
                    onChanged: _lowerCase,
                    fillColor: _checkBoxColor,
                  ),
                )
              ],
            )
          ]),
      ),
    );
  }
}

class _BottomWidget extends StatefulWidget {
  const _BottomWidget({super.key});

  @override
  State<_BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<_BottomWidget> {
  void saveData() async {
    String list = ListOfData.getList();
    list = list + "`" + _appName + "~" + _login + "~" + _password;
    if(await UserUpdateInfo.request(list)){
      _password = "";
      Navigator.of(context).pushReplacementNamed("/listOfPassword");
    }
  }

  void generatePassword(){
    GenerationPassword generationPassword = new GenerationPassword(
      _sliderCount.toInt(), _isDigits, _isSymbols, _isUpperCase, _isLowerCase);
    setState((){
      _password = generationPassword.generatePassword();
      _passwordTextController.text = _password;
    });
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
            onPressed: generatePassword,
            child: Text('generate', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            style: AppButtonStyle.textButtonSecond,
            onPressed: saveData,
            child: Text('save', style: TextStyle(fontSize: 20)),
          ),
        ],
      )
    );
  }
}