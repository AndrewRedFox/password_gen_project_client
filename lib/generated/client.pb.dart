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

import 'client.pbenum.dart';

export 'client.pbenum.dart';

class UserDataRequest extends $pb.GeneratedMessage {
  factory UserDataRequest({
    $core.String? login,
    $core.String? password,
  }) {
    final $result = create();
    if (login != null) {
      $result.login = login;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  UserDataRequest._() : super();
  factory UserDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'login')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserDataRequest clone() => UserDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserDataRequest copyWith(void Function(UserDataRequest) updates) => super.copyWith((message) => updates(message as UserDataRequest)) as UserDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserDataRequest create() => UserDataRequest._();
  UserDataRequest createEmptyInstance() => create();
  static $pb.PbList<UserDataRequest> createRepeated() => $pb.PbList<UserDataRequest>();
  @$core.pragma('dart2js:noInline')
  static UserDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserDataRequest>(create);
  static UserDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class TokenReply extends $pb.GeneratedMessage {
  factory TokenReply({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.String? login,
    TokenReply_StatusCode? replyCode,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (login != null) {
      $result.login = login;
    }
    if (replyCode != null) {
      $result.replyCode = replyCode;
    }
    return $result;
  }
  TokenReply._() : super();
  factory TokenReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokenReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken', protoName: 'refreshToken')
    ..aOS(3, _omitFieldNames ? '' : 'login')
    ..e<TokenReply_StatusCode>(4, _omitFieldNames ? '' : 'replyCode', $pb.PbFieldType.OE, protoName: 'replyCode', defaultOrMaker: TokenReply_StatusCode.UserNotFound, valueOf: TokenReply_StatusCode.valueOf, enumValues: TokenReply_StatusCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenReply clone() => TokenReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenReply copyWith(void Function(TokenReply) updates) => super.copyWith((message) => updates(message as TokenReply)) as TokenReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenReply create() => TokenReply._();
  TokenReply createEmptyInstance() => create();
  static $pb.PbList<TokenReply> createRepeated() => $pb.PbList<TokenReply>();
  @$core.pragma('dart2js:noInline')
  static TokenReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenReply>(create);
  static TokenReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get login => $_getSZ(2);
  @$pb.TagNumber(3)
  set login($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogin() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogin() => clearField(3);

  @$pb.TagNumber(4)
  TokenReply_StatusCode get replyCode => $_getN(3);
  @$pb.TagNumber(4)
  set replyCode(TokenReply_StatusCode v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReplyCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearReplyCode() => clearField(4);
}

class RegisterRequest extends $pb.GeneratedMessage {
  factory RegisterRequest({
    $core.String? login,
    $core.String? password,
    $core.String? passwordConfirm,
  }) {
    final $result = create();
    if (login != null) {
      $result.login = login;
    }
    if (password != null) {
      $result.password = password;
    }
    if (passwordConfirm != null) {
      $result.passwordConfirm = passwordConfirm;
    }
    return $result;
  }
  RegisterRequest._() : super();
  factory RegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'login')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'passwordConfirm', protoName: 'passwordConfirm')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get passwordConfirm => $_getSZ(2);
  @$pb.TagNumber(3)
  set passwordConfirm($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPasswordConfirm() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasswordConfirm() => clearField(3);
}

class RegisterReply extends $pb.GeneratedMessage {
  factory RegisterReply({
    RegisterReply_StatusCode? replyCode,
  }) {
    final $result = create();
    if (replyCode != null) {
      $result.replyCode = replyCode;
    }
    return $result;
  }
  RegisterReply._() : super();
  factory RegisterReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..e<RegisterReply_StatusCode>(1, _omitFieldNames ? '' : 'replyCode', $pb.PbFieldType.OE, protoName: 'replyCode', defaultOrMaker: RegisterReply_StatusCode.UserNotFound, valueOf: RegisterReply_StatusCode.valueOf, enumValues: RegisterReply_StatusCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterReply clone() => RegisterReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterReply copyWith(void Function(RegisterReply) updates) => super.copyWith((message) => updates(message as RegisterReply)) as RegisterReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterReply create() => RegisterReply._();
  RegisterReply createEmptyInstance() => create();
  static $pb.PbList<RegisterReply> createRepeated() => $pb.PbList<RegisterReply>();
  @$core.pragma('dart2js:noInline')
  static RegisterReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterReply>(create);
  static RegisterReply? _defaultInstance;

  @$pb.TagNumber(1)
  RegisterReply_StatusCode get replyCode => $_getN(0);
  @$pb.TagNumber(1)
  set replyCode(RegisterReply_StatusCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplyCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplyCode() => clearField(1);
}

class InfoRequest extends $pb.GeneratedMessage {
  factory InfoRequest({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.String? login,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (login != null) {
      $result.login = login;
    }
    return $result;
  }
  InfoRequest._() : super();
  factory InfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken', protoName: 'refreshToken')
    ..aOS(3, _omitFieldNames ? '' : 'login')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoRequest clone() => InfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoRequest copyWith(void Function(InfoRequest) updates) => super.copyWith((message) => updates(message as InfoRequest)) as InfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoRequest create() => InfoRequest._();
  InfoRequest createEmptyInstance() => create();
  static $pb.PbList<InfoRequest> createRepeated() => $pb.PbList<InfoRequest>();
  @$core.pragma('dart2js:noInline')
  static InfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoRequest>(create);
  static InfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get login => $_getSZ(2);
  @$pb.TagNumber(3)
  set login($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogin() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogin() => clearField(3);
}

class InfoReply extends $pb.GeneratedMessage {
  factory InfoReply({
    $core.String? list,
    InfoReply_StatusCode? replyCode,
    $core.String? accessToken,
    $core.String? refreshToken,
  }) {
    final $result = create();
    if (list != null) {
      $result.list = list;
    }
    if (replyCode != null) {
      $result.replyCode = replyCode;
    }
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    return $result;
  }
  InfoReply._() : super();
  factory InfoReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InfoReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InfoReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'list')
    ..e<InfoReply_StatusCode>(2, _omitFieldNames ? '' : 'replyCode', $pb.PbFieldType.OE, protoName: 'replyCode', defaultOrMaker: InfoReply_StatusCode.Unlogin, valueOf: InfoReply_StatusCode.valueOf, enumValues: InfoReply_StatusCode.values)
    ..aOS(3, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(4, _omitFieldNames ? '' : 'refreshToken', protoName: 'refreshToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InfoReply clone() => InfoReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InfoReply copyWith(void Function(InfoReply) updates) => super.copyWith((message) => updates(message as InfoReply)) as InfoReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InfoReply create() => InfoReply._();
  InfoReply createEmptyInstance() => create();
  static $pb.PbList<InfoReply> createRepeated() => $pb.PbList<InfoReply>();
  @$core.pragma('dart2js:noInline')
  static InfoReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InfoReply>(create);
  static InfoReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get list => $_getSZ(0);
  @$pb.TagNumber(1)
  set list($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasList() => $_has(0);
  @$pb.TagNumber(1)
  void clearList() => clearField(1);

  @$pb.TagNumber(2)
  InfoReply_StatusCode get replyCode => $_getN(1);
  @$pb.TagNumber(2)
  set replyCode(InfoReply_StatusCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReplyCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplyCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessToken() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get refreshToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set refreshToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRefreshToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearRefreshToken() => clearField(4);
}

class UpdateRequest extends $pb.GeneratedMessage {
  factory UpdateRequest({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.String? login,
    $core.String? list,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    if (login != null) {
      $result.login = login;
    }
    if (list != null) {
      $result.list = list;
    }
    return $result;
  }
  UpdateRequest._() : super();
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken', protoName: 'refreshToken')
    ..aOS(3, _omitFieldNames ? '' : 'login')
    ..aOS(4, _omitFieldNames ? '' : 'list')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get login => $_getSZ(2);
  @$pb.TagNumber(3)
  set login($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogin() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogin() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get list => $_getSZ(3);
  @$pb.TagNumber(4)
  set list($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasList() => $_has(3);
  @$pb.TagNumber(4)
  void clearList() => clearField(4);
}

class UpdateReply extends $pb.GeneratedMessage {
  factory UpdateReply({
    $core.String? accessToken,
    $core.String? refreshToken,
  }) {
    final $result = create();
    if (accessToken != null) {
      $result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      $result.refreshToken = refreshToken;
    }
    return $result;
  }
  UpdateReply._() : super();
  factory UpdateReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'greet'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken', protoName: 'refreshToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateReply clone() => UpdateReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateReply copyWith(void Function(UpdateReply) updates) => super.copyWith((message) => updates(message as UpdateReply)) as UpdateReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateReply create() => UpdateReply._();
  UpdateReply createEmptyInstance() => create();
  static $pb.PbList<UpdateReply> createRepeated() => $pb.PbList<UpdateReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateReply>(create);
  static UpdateReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
