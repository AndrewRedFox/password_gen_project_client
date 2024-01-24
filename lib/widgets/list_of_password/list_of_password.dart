import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:password_gen_project/client/client_api_user_get_info.dart';
import 'package:password_gen_project/helpers/pair.dart';
import 'package:password_gen_project/theme/app_button_style.dart';
import 'package:password_gen_project/theme/app_colors.dart';
import 'package:password_gen_project/theme/app_size_layout.dart';
import 'dart:developer' as developer;

import 'package:password_gen_project/theme/app_textfield_decorator.dart';

List<Pair> _list=[];
List<Widget> _listOfPass=[];
List<Pair> _filterList=[];
final _searchTextController = TextEditingController(text: "");

class ListOfPassword extends StatefulWidget {
  const ListOfPassword({super.key});

  @override
  State<ListOfPassword> createState() => _ListOfPasswordState();
}

class _ListOfPasswordState extends State<ListOfPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _HeaderWidget(),
          Container(
            color: Colors.grey,
            height: 1,
          ),
          _CenterWidget(),
        ],
      ),
    );
} }

class _HeaderWidget extends StatefulWidget {
  const _HeaderWidget({super.key});

  @override
  State<_HeaderWidget> createState() => __HeaderWidgetState();
}

class __HeaderWidgetState extends State<_HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    var _textBorder = AppTextField.decorator;

    return Container(
      height: AppSizeLayout.height * 0.1,
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            decoration: _textBorder,
            controller: _searchTextController,
          ),
        ),
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
  void add(){
    Navigator.of(context).pushNamed('/generatePassword');
    setState((){});
  }

  @override
  void initState() {
    super.initState();
    _loadAnimation();
    WidgetsBinding.instance.addPostFrameCallback((_) { 
      _userGetInfo();
      _searchTextController.addListener((_search));
    });
  }

  void _loadAnimation(){
    _listOfPass.add(SizedBox(height: AppSizeLayout.height/4,));
    _listOfPass.add(
        SpinKitRing(
          color: AppColors.buttonFirstColor,
          size: 150,
        )
    );
  }

  void _userGetInfo() async {
    _listOfPass.clear();
    if(await UserGetInfo.request()){
      _list = UserGetInfo.getList();
      _list.forEach((element) {
        setState(() {
          _listOfPass.add(_ListWidget(element.first, element.second, element.third));
        });
      });
      setState(() {});
    }
  }

  void _search(){
    final _text = _searchTextController.text;

    if(_text.isNotEmpty){
      _filterList = _list.where((Pair pair){
        return pair.first.toLowerCase().contains(_text.toLowerCase());
      }).toList();
    } else{
      _filterList = _list;
    }
    setState(() => _searchSource());
  }

  void _searchSource(){
    _listOfPass.clear();
    _filterList.forEach((element) {
        setState(() {
          _listOfPass.add(_ListWidget(element.first, element.second, element.third));
        });
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Container(
      height: AppSizeLayout.height * 0.86,
      color: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            ListView(
              children: _listOfPass,
              key: UniqueKey(),
            ),
            Positioned(
              bottom: AppSizeLayout.height * 0.014,
              right: AppSizeLayout.width * 0.028,
              child: FloatingActionButton(
                  onPressed: add,
                  backgroundColor: AppColors.buttonSecondColor,
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.add),
                ),
            ),
          ]
        ),
      ),
    );
  }
}

class _ListWidget extends StatefulWidget {
  final String _login;
  final String _password;
  final String _source;

  const _ListWidget(this._source, this._login, this._password); 

  @override
  State<_ListWidget> createState() => __ListWidgetState(_source,_login, _password);
}

class __ListWidgetState extends State<_ListWidget> {
  late String _login = "";
  late String _password = "";
  late String _source = "";
  __ListWidgetState(this._source, this._login, this._password);

  void _copyLogin() async {
    await Clipboard.setData(ClipboardData(text: _login));
    setState((){});
  }

  void _copyPassword() async {
    await Clipboard.setData(ClipboardData(text: _password));
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    const _textBorder = const InputDecoration( 
      border: UnderlineInputBorder(), contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), isCollapsed: true, focusColor: AppColors.buttonSecondColor,
    );

    final _loginTextController = TextEditingController(text: _login);
    final _passwordTextController = TextEditingController(text: _password);

    return Column(
      children: [
        Container(
          color: Colors.white,
          height: AppSizeLayout.height * 0.84 / 3.6,
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(height: 5,),
              Text(_source, style: TextStyle(color: AppColors.buttonSecondColor, fontSize: 16),),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: _textBorder,
                      readOnly: true,
                      enabled: false,
                      controller: _loginTextController,
                    ),
                  ),
                  TextButton(
                    onPressed: _copyLogin,
                    child: Icon(Icons.copy, color: AppColors.buttonFirstColor,),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: _textBorder,
                      obscureText: true,
                      readOnly: true,
                      enabled: false,
                      controller: _passwordTextController,
                    ),
                  ),
                  TextButton(
                    onPressed: _copyPassword,
                    child: Icon(Icons.copy, color: AppColors.buttonFirstColor,),
                  ),
                ],
              ),
            ]
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
