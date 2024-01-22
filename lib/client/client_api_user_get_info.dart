import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:password_gen_project/client/client_list.dart';
import 'package:password_gen_project/client/client_login.dart';
import 'package:password_gen_project/client/client_tokens.dart';
import 'package:password_gen_project/generated/client.pbgrpc.dart';
import 'package:password_gen_project/helpers/pair.dart';
import 'package:password_gen_project/helpers/parse_list_of_password.dart';

abstract class UserGetInfo {
  static String _a = "";
  static String _list ="";

  static Future<bool> request() async {
    final caCert = await rootBundle.loadString('assets/grpc.crt');
    
    final channel = ClientChannel(
    '192.168.0.40',
    port: 7222,
    options: ChannelOptions(
      credentials: ChannelCredentials.secure(
        certificates: utf8.encode(caCert),
        onBadCertificate:(certificate, host) => host == '192.168.0.40:7222',
      ), 
    ),
    );
    final stub = GreeterClient(channel);//название сервиса, client добавляется автоматически

    try {
    final response = await stub.userGetInfo( //имя rpc соединения/ ответ
      //UserDataRequest()..login = _login,
      InfoRequest(accessToken: Tokens.getAccessToken(), refreshToken: Tokens.getRefreshToken(), login: Login.getLogin())
    );
    Tokens.setAccessToken(response.accessToken);
    Tokens.setRefreshToken(response.refreshToken);
    _a = response.replyCode.toString();
    _list = response.list;
    ListOfData.setList(_list);
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    if(_a=="Ok") return true;
  
    return false;
  }

  static List<Pair> getList(){
   return ParserList.parseList(_list);
  }


}