//
//  Generated code. Do not modify.
//  source: client.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class TokenReply_StatusCode extends $pb.ProtobufEnum {
  static const TokenReply_StatusCode UserNotFound = TokenReply_StatusCode._(0, _omitEnumNames ? '' : 'UserNotFound');
  static const TokenReply_StatusCode OK = TokenReply_StatusCode._(200, _omitEnumNames ? '' : 'OK');
  static const TokenReply_StatusCode InternalServerError = TokenReply_StatusCode._(500, _omitEnumNames ? '' : 'InternalServerError');
  static const TokenReply_StatusCode LoginAlreadyUse = TokenReply_StatusCode._(100, _omitEnumNames ? '' : 'LoginAlreadyUse');
  static const TokenReply_StatusCode IncorrectPassword = TokenReply_StatusCode._(50, _omitEnumNames ? '' : 'IncorrectPassword');

  static const $core.List<TokenReply_StatusCode> values = <TokenReply_StatusCode> [
    UserNotFound,
    OK,
    InternalServerError,
    LoginAlreadyUse,
    IncorrectPassword,
  ];

  static final $core.Map<$core.int, TokenReply_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TokenReply_StatusCode? valueOf($core.int value) => _byValue[value];

  const TokenReply_StatusCode._($core.int v, $core.String n) : super(v, n);
}

class RegisterReply_StatusCode extends $pb.ProtobufEnum {
  static const RegisterReply_StatusCode UserNotFound = RegisterReply_StatusCode._(0, _omitEnumNames ? '' : 'UserNotFound');
  static const RegisterReply_StatusCode OK = RegisterReply_StatusCode._(200, _omitEnumNames ? '' : 'OK');
  static const RegisterReply_StatusCode InternalServerError = RegisterReply_StatusCode._(500, _omitEnumNames ? '' : 'InternalServerError');
  static const RegisterReply_StatusCode LoginAlreadyUse = RegisterReply_StatusCode._(100, _omitEnumNames ? '' : 'LoginAlreadyUse');

  static const $core.List<RegisterReply_StatusCode> values = <RegisterReply_StatusCode> [
    UserNotFound,
    OK,
    InternalServerError,
    LoginAlreadyUse,
  ];

  static final $core.Map<$core.int, RegisterReply_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegisterReply_StatusCode? valueOf($core.int value) => _byValue[value];

  const RegisterReply_StatusCode._($core.int v, $core.String n) : super(v, n);
}

class InfoReply_StatusCode extends $pb.ProtobufEnum {
  static const InfoReply_StatusCode Unlogin = InfoReply_StatusCode._(0, _omitEnumNames ? '' : 'Unlogin');
  static const InfoReply_StatusCode Ok = InfoReply_StatusCode._(200, _omitEnumNames ? '' : 'Ok');

  static const $core.List<InfoReply_StatusCode> values = <InfoReply_StatusCode> [
    Unlogin,
    Ok,
  ];

  static final $core.Map<$core.int, InfoReply_StatusCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InfoReply_StatusCode? valueOf($core.int value) => _byValue[value];

  const InfoReply_StatusCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
