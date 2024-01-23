import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:developer' as developer;

abstract class _SecureStorageKey{
  static const secureStorageRefreshKey = 'refreshToken';
  static const secureStorageAccessKey = 'accessToken';
  static const secureStorageLoginKey = 'login';
}

abstract class SecureStorage {
  static final _secureStorage = FlutterSecureStorage();

  static void setAccessToken(String value) async {
    await _secureStorage.write(key: _SecureStorageKey.secureStorageAccessKey, value: value);
  }

  static void setRefreshToken(String value) async {
    await _secureStorage.write(key: _SecureStorageKey.secureStorageRefreshKey, value: value);
  }

  static void setLogin(String value) async {
    await _secureStorage.write(key: _SecureStorageKey.secureStorageLoginKey, value: value);
  }

  static Future<String?> getAccessToken() async {
    return _secureStorage.read(key: _SecureStorageKey.secureStorageAccessKey);
  }

  static Future<String?> getRefreshToken() async {
    return  _secureStorage.read(key: _SecureStorageKey.secureStorageRefreshKey);
  }

  static Future<String?> getLogin() async {
    return _secureStorage.read(key: _SecureStorageKey.secureStorageLoginKey);
  }
}