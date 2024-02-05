import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:password_gen_project/client/client_list.dart';
import 'package:password_gen_project/generated/client.pbgrpc.dart';
import 'package:password_gen_project/helpers/pair.dart';
import 'package:password_gen_project/helpers/parse_list_of_password.dart';
import 'package:password_gen_project/helpers/secure_storage.dart';

abstract class UserGetInfo {
  static String _a = "";
  static String _list ="";

  static Future<bool> request() async {
    final caCert = await rootBundle.loadString('assets/grpc.crt');
    
    final channel = ClientChannel(
    '95.164.47.120',
    port: 7222,
    options: ChannelOptions(
      credentials: ChannelCredentials.secure(
        certificates: utf8.encode(caCert),
        onBadCertificate:(certificate, host) => host == '95.164.47.120:7222',
      ), 
    ),
    );
    final stub = GreeterClient(channel);//название сервиса, client добавляется автоматически

    try {
    final response = await stub.userGetInfo( //имя rpc соединения/ ответ
      //UserDataRequest()..login = _login,
      InfoRequest(accessToken: await SecureStorage.getAccessToken(), refreshToken: await SecureStorage.getRefreshToken(),
        login: await SecureStorage.getLogin())
    );

    SecureStorage.setAccessToken(response.accessToken);
    SecureStorage.setRefreshToken(response.refreshToken);
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