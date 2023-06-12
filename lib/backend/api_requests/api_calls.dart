import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class IsTenantAvailableCall {
  static Future<ApiCallResponse> call({
    String? tenancyName = 'null',
  }) {
    final body = '''
{
  "tenancyName": "${tenancyName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'IsTenantAvailable',
      apiUrl:
          'https://app.thesolarproduct.com/api/services/app/Account/IsTenantAvailable',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic tenentId(dynamic response) => getJsonField(
        response,
        r'''$.result.tenantId''',
      );
}

class AuthenticateCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
    int? tenantId,
  }) {
    final body = '''
{
  "userNameOrEmailAddress": "${userName}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authenticate',
      apiUrl: 'https://app.thesolarproduct.com/api/TokenAuth/Authenticate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Abp.TenantId': '${tenantId}',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.result.accessToken''',
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.result.userId''',
      );
}

class GetUserInfoCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
    int? tenantId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserInfo',
      apiUrl:
          'https://app.thesolarproduct.com/api/services/app/UsersInfo/GetUserInfo',
      callType: ApiCallType.GET,
      headers: {
        'X-XSRF-TOKEN': '${token}',
        'accept': 'text/plain',
      },
      params: {
        'UserId': userId,
        'TenantId': tenantId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic userInfo(dynamic response) => getJsonField(
        response,
        r'''$.result''',
      );
}

class GetInstallationCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
    int? tenantId,
    String? installationDate = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetInstallation',
      apiUrl:
          'http://app.thesolarproduct.com/api/services/app/Installer/GetInstallation',
      callType: ApiCallType.GET,
      headers: {
        'X-XSRF-TOKEN': '${token}',
        'accept': 'text/plain',
      },
      params: {
        'UserId': userId,
        'TenantId': tenantId,
        'InstallationDate': installationDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic installationList(dynamic response) => getJsonField(
        response,
        r'''$.result''',
        true,
      );
  static dynamic jobNumber(dynamic response) => getJsonField(
        response,
        r'''$.result[:].jobNumber''',
        true,
      );
  static dynamic customerName(dynamic response) => getJsonField(
        response,
        r'''$.result[:].customerName''',
        true,
      );
  static dynamic installationTime(dynamic response) => getJsonField(
        response,
        r'''$.result[:].installationTime''',
        true,
      );
  static dynamic address(dynamic response) => getJsonField(
        response,
        r'''$.result[:].address''',
        true,
      );
  static dynamic address2(dynamic response) => getJsonField(
        response,
        r'''$.result[:].address2''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
