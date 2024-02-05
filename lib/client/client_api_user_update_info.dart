import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:password_gen_project/generated/client.pbgrpc.dart';
import 'package:password_gen_project/helpers/secure_storage.dart';

abstract class UserUpdateInfo{
  static String _a = "";
  
  static Future<bool> request (String list) async {
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
    final response = await stub.userUpdateInfo( //имя rpc соединения/ ответ
      //UserDataRequest()..login = _login,
      UpdateRequest(accessToken: await SecureStorage.getAccessToken(), refreshToken: await SecureStorage.getRefreshToken(),
        login: await SecureStorage.getLogin(), list: list));

    SecureStorage.setAccessToken(response.accessToken);
    SecureStorage.setRefreshToken(response.refreshToken);

    _a = "OK";
    } catch (e) {
      print('Caught error: $e');
    }

    await channel.shutdown();

    if(_a == "OK") return true;

    return false;
  }
}