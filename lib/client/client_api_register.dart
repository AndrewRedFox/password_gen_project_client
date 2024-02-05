import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:password_gen_project/generated/client.pbgrpc.dart';
import 'dart:developer' as developer;

abstract class ClientRegister {
  static String _login = "";
  static String _password = "";
  static String _confirmPassword = "";
  static String _a = "";

  static Future<bool> request (String login, String password, String confirmPassword) async {
    _login = login;
    _password = password;
    _confirmPassword=confirmPassword;
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
    final response = await stub.userRegister( //имя rpc соединения/ ответ
      //UserDataRequest()..login = _login,
      RegisterRequest(login: _login, password: _password, passwordConfirm: _confirmPassword)
    );
    //print('Greeter client received: ${response.replyCode}');
    _a = response.replyCode.toString();
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
    if(_a=="OK") {
      developer.log("OK");
      return true;
    }
    return false;
  }
}