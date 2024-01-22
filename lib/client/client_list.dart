import 'package:password_gen_project/helpers/pair.dart';

abstract class ListOfData{
  static String _list="";

  static String getList(){
    return _list;
  }

  static void setList(String list){
    _list = list;
  }
}