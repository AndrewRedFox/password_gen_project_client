import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:password_gen_project/client/client_login.dart';
import 'package:password_gen_project/generated/client.pbgrpc.dart';
import 'package:password_gen_project/helpers/status_code.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'dart:developer' as developer;
import 'client_tokens.dart';

abstract class ClientValidation {
  static String _login = "";
  static String _password = "";
  static String _a = "";

  static Future<bool> request(String login, String password) async {
    _login = login;
    _password = password;
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
    final response = await stub.userAuth( //имя rpc соединения/ ответ
      //UserDataRequest()..login = _login,
      UserDataRequest(login: _login, password: _password)
    );
    Tokens.setAccessToken(response.accessToken);
    Tokens.setRefreshToken(response.refreshToken);
    Login.setLogin(response.login);
    //developer.log('Greeter client received: ${response.accessToken} ${response.refreshToken} ${response.replyCode}');
    _a = response.replyCode.toString();
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
  if(_a=="OK") return true;

  return false;
  }
}
