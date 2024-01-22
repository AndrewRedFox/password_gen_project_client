import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:password_gen_project/client/client_login.dart';
import 'package:password_gen_project/client/client_tokens.dart';
import 'package:password_gen_project/generated/client.pbgrpc.dart';

abstract class UserUpdateInfo{
  static String _a = "";
  
  static Future<bool> request (String list) async {
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
    final response = await stub.userUpdateInfo( //имя rpc соединения/ ответ
      //UserDataRequest()..login = _login,
      UpdateRequest(accessToken: Tokens.getAccessToken(), refreshToken: Tokens.getRefreshToken(), login: Login.getLogin(), list: list));
    //print('Greeter client received: ${response.replyCode}');
    Tokens.setAccessToken(response.accessToken);
    Tokens.setRefreshToken(response.refreshToken);
    _a = "OK";
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    if(_a=="OK") {
      return true;
    }
    return false;
  }
}