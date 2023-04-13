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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
