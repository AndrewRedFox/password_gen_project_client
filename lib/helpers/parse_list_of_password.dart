import 'package:password_gen_project/helpers/pair.dart';
import 'dart:developer' as developer;

abstract class ParserList{
  static List<Pair> parseList(String str){
  List<Pair> listOfPair=[];  
  if(str=="") return listOfPair;

  str=str.substring(1);//////
  List splitStr = str.split('`');

  splitStr.forEach((element) {
    List list = element.split('~');
    Pair pair = Pair(list[0],list[1],list[2]);
    listOfPair.add(pair);
  });

  return listOfPair;
  }
}