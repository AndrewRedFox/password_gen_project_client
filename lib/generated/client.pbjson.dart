//
//  Generated code. Do not modify.
//  source: client.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDataRequestDescriptor instead')
const UserDataRequest$json = {
  '1': 'UserDataRequest',
  '2': [
    {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `UserDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataRequestDescriptor = $convert.base64Decode(
    'Cg9Vc2VyRGF0YVJlcXVlc3QSFAoFbG9naW4YASABKAlSBWxvZ2luEhoKCHBhc3N3b3JkGAIgAS'
    'gJUghwYXNzd29yZA==');

@$core.Deprecated('Use tokenReplyDescriptor instead')
const TokenReply$json = {
  '1': 'TokenReply',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'login', '3': 3, '4': 1, '5': 9, '10': 'login'},
    {'1': 'replyCode', '3': 4, '4': 1, '5': 14, '6': '.greet.TokenReply.StatusCode', '10': 'replyCode'},
  ],
  '4': [TokenReply_StatusCode$json],
};

@$core.Deprecated('Use tokenReplyDescriptor instead')
const TokenReply_StatusCode$json = {
  '1': 'StatusCode',
  '2': [
    {'1': 'UserNotFound', '2': 0},
    {'1': 'OK', '2': 200},
    {'1': 'InternalServerError', '2': 500},
    {'1': 'LoginAlreadyUse', '2': 100},
    {'1': 'IncorrectPassword', '2': 50},
  ],
};

/// Descriptor for `TokenReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReplyDescriptor = $convert.base64Decode(
    'CgpUb2tlblJlcGx5EiAKC2FjY2Vzc1Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbhIiCgxyZWZyZX'
    'NoVG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhIUCgVsb2dpbhgDIAEoCVIFbG9naW4SOgoJcmVw'
    'bHlDb2RlGAQgASgOMhwuZ3JlZXQuVG9rZW5SZXBseS5TdGF0dXNDb2RlUglyZXBseUNvZGUibQ'
    'oKU3RhdHVzQ29kZRIQCgxVc2VyTm90Rm91bmQQABIHCgJPSxDIARIYChNJbnRlcm5hbFNlcnZl'
    'ckVycm9yEPQDEhMKD0xvZ2luQWxyZWFkeVVzZRBkEhUKEUluY29ycmVjdFBhc3N3b3JkEDI=');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'passwordConfirm', '3': 3, '4': 1, '5': 9, '10': 'passwordConfirm'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSFAoFbG9naW4YASABKAlSBWxvZ2luEhoKCHBhc3N3b3JkGAIgAS'
    'gJUghwYXNzd29yZBIoCg9wYXNzd29yZENvbmZpcm0YAyABKAlSD3Bhc3N3b3JkQ29uZmlybQ==');

@$core.Deprecated('Use registerReplyDescriptor instead')
const RegisterReply$json = {
  '1': 'RegisterReply',
  '2': [
    {'1': 'replyCode', '3': 1, '4': 1, '5': 14, '6': '.greet.RegisterReply.StatusCode', '10': 'replyCode'},
  ],
  '4': [RegisterReply_StatusCode$json],
};

@$core.Deprecated('Use registerReplyDescriptor instead')
const RegisterReply_StatusCode$json = {
  '1': 'StatusCode',
  '2': [
    {'1': 'UserNotFound', '2': 0},
    {'1': 'OK', '2': 200},
    {'1': 'InternalServerError', '2': 500},
    {'1': 'LoginAlreadyUse', '2': 100},
  ],
};

/// Descriptor for `RegisterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerReplyDescriptor = $convert.base64Decode(
    'Cg1SZWdpc3RlclJlcGx5Ej0KCXJlcGx5Q29kZRgBIAEoDjIfLmdyZWV0LlJlZ2lzdGVyUmVwbH'
    'kuU3RhdHVzQ29kZVIJcmVwbHlDb2RlIlYKClN0YXR1c0NvZGUSEAoMVXNlck5vdEZvdW5kEAAS'
    'BwoCT0sQyAESGAoTSW50ZXJuYWxTZXJ2ZXJFcnJvchD0AxITCg9Mb2dpbkFscmVhZHlVc2UQZA'
    '==');

@$core.Deprecated('Use infoRequestDescriptor instead')
const InfoRequest$json = {
  '1': 'InfoRequest',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'login', '3': 3, '4': 1, '5': 9, '10': 'login'},
  ],
};

/// Descriptor for `InfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoRequestDescriptor = $convert.base64Decode(
    'CgtJbmZvUmVxdWVzdBIgCgthY2Nlc3NUb2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIgoMcmVmcm'
    'VzaFRva2VuGAIgASgJUgxyZWZyZXNoVG9rZW4SFAoFbG9naW4YAyABKAlSBWxvZ2lu');

@$core.Deprecated('Use infoReplyDescriptor instead')
const InfoReply$json = {
  '1': 'InfoReply',
  '2': [
    {'1': 'list', '3': 1, '4': 1, '5': 9, '10': 'list'},
    {'1': 'replyCode', '3': 2, '4': 1, '5': 14, '6': '.greet.InfoReply.StatusCode', '10': 'replyCode'},
    {'1': 'accessToken', '3': 3, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refreshToken', '3': 4, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
  '4': [InfoReply_StatusCode$json],
};

@$core.Deprecated('Use infoReplyDescriptor instead')
const InfoReply_StatusCode$json = {
  '1': 'StatusCode',
  '2': [
    {'1': 'Unlogin', '2': 0},
    {'1': 'Ok', '2': 200},
  ],
};

/// Descriptor for `InfoReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List infoReplyDescriptor = $convert.base64Decode(
    'CglJbmZvUmVwbHkSEgoEbGlzdBgBIAEoCVIEbGlzdBI5CglyZXBseUNvZGUYAiABKA4yGy5ncm'
    'VldC5JbmZvUmVwbHkuU3RhdHVzQ29kZVIJcmVwbHlDb2RlEiAKC2FjY2Vzc1Rva2VuGAMgASgJ'
    'UgthY2Nlc3NUb2tlbhIiCgxyZWZyZXNoVG9rZW4YBCABKAlSDHJlZnJlc2hUb2tlbiIiCgpTdG'
    'F0dXNDb2RlEgsKB1VubG9naW4QABIHCgJPaxDIAQ==');

@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'login', '3': 3, '4': 1, '5': 9, '10': 'login'},
    {'1': 'list', '3': 4, '4': 1, '5': 9, '10': 'list'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0EiAKC2FjY2Vzc1Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbhIiCgxyZW'
    'ZyZXNoVG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhIUCgVsb2dpbhgDIAEoCVIFbG9naW4SEgoE'
    'bGlzdBgEIAEoCVIEbGlzdA==');

@$core.Deprecated('Use updateReplyDescriptor instead')
const UpdateReply$json = {
  '1': 'UpdateReply',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refreshToken', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `UpdateReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateReplyDescriptor = $convert.base64Decode(
    'CgtVcGRhdGVSZXBseRIgCgthY2Nlc3NUb2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIgoMcmVmcm'
    'VzaFRva2VuGAIgASgJUgxyZWZyZXNoVG9rZW4=');

