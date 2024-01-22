//
//  Generated code. Do not modify.
//  source: client.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'client.pb.dart' as $0;

export 'client.pb.dart';

@$pb.GrpcServiceName('greet.Greeter')
class GreeterClient extends $grpc.Client {
  static final _$userAuth = $grpc.ClientMethod<$0.UserDataRequest, $0.TokenReply>(
      '/greet.Greeter/UserAuth',
      ($0.UserDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TokenReply.fromBuffer(value));
  static final _$userRegister = $grpc.ClientMethod<$0.RegisterRequest, $0.RegisterReply>(
      '/greet.Greeter/UserRegister',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RegisterReply.fromBuffer(value));
  static final _$userGetInfo = $grpc.ClientMethod<$0.InfoRequest, $0.InfoReply>(
      '/greet.Greeter/UserGetInfo',
      ($0.InfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InfoReply.fromBuffer(value));
  static final _$userUpdateInfo = $grpc.ClientMethod<$0.UpdateRequest, $0.UpdateReply>(
      '/greet.Greeter/UserUpdateInfo',
      ($0.UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateReply.fromBuffer(value));

  GreeterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.TokenReply> userAuth($0.UserDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userAuth, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterReply> userRegister($0.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userRegister, request, options: options);
  }

  $grpc.ResponseFuture<$0.InfoReply> userGetInfo($0.InfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userGetInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateReply> userUpdateInfo($0.UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userUpdateInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('greet.Greeter')
abstract class GreeterServiceBase extends $grpc.Service {
  $core.String get $name => 'greet.Greeter';

  GreeterServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserDataRequest, $0.TokenReply>(
        'UserAuth',
        userAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserDataRequest.fromBuffer(value),
        ($0.TokenReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.RegisterReply>(
        'UserRegister',
        userRegister_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.RegisterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InfoRequest, $0.InfoReply>(
        'UserGetInfo',
        userGetInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InfoRequest.fromBuffer(value),
        ($0.InfoReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRequest, $0.UpdateReply>(
        'UserUpdateInfo',
        userUpdateInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRequest.fromBuffer(value),
        ($0.UpdateReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.TokenReply> userAuth_Pre($grpc.ServiceCall call, $async.Future<$0.UserDataRequest> request) async {
    return userAuth(call, await request);
  }

  $async.Future<$0.RegisterReply> userRegister_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return userRegister(call, await request);
  }

  $async.Future<$0.InfoReply> userGetInfo_Pre($grpc.ServiceCall call, $async.Future<$0.InfoRequest> request) async {
    return userGetInfo(call, await request);
  }

  $async.Future<$0.UpdateReply> userUpdateInfo_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateRequest> request) async {
    return userUpdateInfo(call, await request);
  }

  $async.Future<$0.TokenReply> userAuth($grpc.ServiceCall call, $0.UserDataRequest request);
  $async.Future<$0.RegisterReply> userRegister($grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.InfoReply> userGetInfo($grpc.ServiceCall call, $0.InfoRequest request);
  $async.Future<$0.UpdateReply> userUpdateInfo($grpc.ServiceCall call, $0.UpdateRequest request);
}
