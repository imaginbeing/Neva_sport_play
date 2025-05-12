import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Chat Group Code

class ChatGroup {
  static String getBaseUrl({
    String? authToken = 'token',
  }) =>
      'http://92.255.111.91:8080/api/v1/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [auth_token]',
  };
  static MyChatsCall myChatsCall = MyChatsCall();
  static GetChatCall getChatCall = GetChatCall();
  static SendMessageCall sendMessageCall = SendMessageCall();
}

class MyChatsCall {
  Future<ApiCallResponse> call({
    String? authToken = 'token',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'My Chats',
      apiUrl: '${baseUrl}chats',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChatCall {
  Future<ApiCallResponse> call({
    String? addressId = '',
    String? authToken = 'token',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Get Chat',
      apiUrl: '${baseUrl}chats/${addressId}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendMessageCall {
  Future<ApiCallResponse> call({
    String? chatId = 'c605d6ca-09ba-4165-9d7b-cba11ded4258',
    String? text = 'Message',
    String? authToken = 'token',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "address": "${chatId}",
  "text": "${text}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Message',
      apiUrl: '${baseUrl}chats',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Chat Group Code

/// Start Sessions Group Code

class SessionsGroup {
  static String getBaseUrl() => 'http://92.255.111.91:8080/api/v1';
  static Map<String, String> headers = {};
  static ZapisKtreneruCall zapisKtreneruCall = ZapisKtreneruCall();
  static ApproveCall approveCall = ApproveCall();
  static CancelCall cancelCall = CancelCall();
  static CatalogCall catalogCall = CatalogCall();
}

class ZapisKtreneruCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? trainerId = '',
    String? date = '',
    String? time = '',
    String? place = '',
  }) async {
    final baseUrl = SessionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "trainerId": "${trainerId}",
  "date": "${date}",
  "time": "${time}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ZapisKtreneru',
      apiUrl: '${baseUrl}/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApproveCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? sessionID = '',
  }) async {
    final baseUrl = SessionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Approve',
      apiUrl: '${baseUrl}/sessions/approve?sessionId=${sessionID}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? sessionID = '',
  }) async {
    final baseUrl = SessionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'cancel',
      apiUrl: '${baseUrl}/sessions/cancel?sessionId=${sessionID}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CatalogCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? date = '',
    int? status = 0,
  }) async {
    final baseUrl = SessionsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'catalog',
      apiUrl: '${baseUrl}/sessions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {
        'date': date,
        'status': status,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? player(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].player''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? trainer(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].trainer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? preice(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? place(dynamic response) => getJsonField(
        response,
        r'''$.data[:].place''',
        true,
      ) as List?;
  List<int>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

/// End Sessions Group Code

/// Start tournaments Group Code

class TournamentsGroup {
  static String getBaseUrl() => 'http://92.255.111.91:8080/api/v1/';
  static Map<String, String> headers = {};
  static TournamentsListCall tournamentsListCall = TournamentsListCall();
  static TournamentpageCall tournamentpageCall = TournamentpageCall();
}

class TournamentsListCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? take,
    int? skip,
  }) async {
    final baseUrl = TournamentsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'TournamentsList',
      apiUrl: '${baseUrl}/tournaments',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'text/plain',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'take': take,
        'skip': skip,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? created(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].created''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? place(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].place''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? time(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? players(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].players''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? format(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].format''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? playlevel(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? theme(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].theme''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TournamentpageCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
  }) async {
    final baseUrl = TournamentsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Tournamentpage',
      apiUrl: '${baseUrl}tournaments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'accept': 'text/plain',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? created(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  String? place(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.place''',
      ));
  String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.date''',
      ));
  String? time(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.time''',
      ));
  String? format(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.format''',
      ));
  String? rating(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rating''',
      ));
  String? theme(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.theme''',
      ));
}

/// End tournaments Group Code

/// Start event Group Code

class EventGroup {
  static String getBaseUrl() => 'http://92.255.111.91:8080/api/v1';
  static Map<String, String> headers = {};
  static EventlistCall eventlistCall = EventlistCall();
  static EventInfoCall eventInfoCall = EventInfoCall();
}

class EventlistCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = EventGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'eventlist',
      apiUrl: '${baseUrl}/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EventInfoCall {
  Future<ApiCallResponse> call({
    String? eventid = '',
    String? authToken = '',
  }) async {
    final baseUrl = EventGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'EventInfo',
      apiUrl: '${baseUrl}/events/${eventid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'eventid': eventid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  String? place(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.place''',
      ));
  String? datetime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.date''',
      ));
  String? format(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.format''',
      ));
  String? rating(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.rating''',
      ));
  String? theme(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.theme''',
      ));
  List? players(dynamic response) => getJsonField(
        response,
        r'''$.players''',
        true,
      ) as List?;
  String? created(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created''',
      ));
}

/// End event Group Code

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "phone": "${phone}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'http://92.255.111.91:8080/api/v1/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class RegistrationUserCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? phoneNumber = '',
    String? name = '',
    int? gender,
    String? birthDate = '',
    String? city = '',
    String? avatar = '',
    int? skill,
    int? experience,
    String? clientId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "phoneNumber": "${phoneNumber}",
  "name": "${name}",
  "gender": ${gender},
  "birthDate": "${birthDate}",
  "city": "${city}",
  "avatar": "",
  "skill": ${skill},
  "experience": ${experience}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registrationUser',
      apiUrl: 'http://92.255.111.91:8080/api/v1/registration',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegistrationTrainerCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? phoneNumber = '',
    String? name = '',
    int? gender,
    String? birthDate = '',
    String? city = '',
    String? avatar = '',
    int? skill,
    int? experience,
    int? tennisAge,
    int? paddleAge,
    String? education = '',
    String? certificate = '',
    int? sessionDuration,
    int? price,
    int? monday,
    int? tuesday,
    int? wednesday,
    int? thursday,
    int? friday,
    int? saturday,
    int? sunday,
    String? clientID = '',
  }) async {
    final ffApiRequestBody = '''
{
"сlientId": "${clientID}",
  "email": "${email}",
  "password": "${password}",
  "phoneNumber": "${phoneNumber}",
  "name": "${name}",
  "gender": ${gender},
  "birthDate": "${birthDate}",
  "city": "${city}",
  "avatar": "",
  "skill": ${skill},
  "experience": ${experience},
  "trainerInfo": {
    "tennisAge": ${tennisAge},
    "paddleAge": ${paddleAge},
    "education": "${education}",
    "certificate": "${certificate}",
    "price": ${price},
    "sessionDuration": ${sessionDuration},
    "schedule": {
      "monday": ${monday},
      "tuesday": ${tuesday},
      "wednesday": ${wednesday},
      "thursday": ${thursday},
      "friday": ${friday},
      "saturday": ${saturday},
      "sunday": ${sunday}
    },
    "services": [
      {
        "name": "${name}",
        "price": ${price}
      }
    ]
  }
}    ''';
    return ApiManager.instance.makeApiCall(
      callName: 'registrationTrainer',
      apiUrl: 'http://92.255.111.91:8080/api/v1/registration/trainer',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProfileDataCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProfileData',
      apiUrl: 'http://92.255.111.91:8080/api/v1/profile/',
      callType: ApiCallType.GET,
      headers: {
        'accept': '*/*',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? avatar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.avatar''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static int? expirience(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.experience''',
      ));
  static int? skill(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.skill''',
      ));
  static String? birthDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.birthDate''',
      ));
  static int? gender(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.gender''',
      ));
  static String? phonenumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.phoneNumber''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static int? type(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.type''',
      ));
  static String? createddate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.created''',
      ));
  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class AvatarPhotoSendCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? avatar,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AvatarPhotoSend',
      apiUrl: 'http://92.255.111.91:8080/api/v1/profile/avatar',
      callType: ApiCallType.POST,
      headers: {
        'accept': '*/*',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'Avatar': avatar,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TrainerListCall {
  static Future<ApiCallResponse> call({
    String? query = ' ',
    int? experienceBottom = 0,
    int? expirienceUpper = 10000,
    int? type = 1,
    int? priceBottom = 0,
    int? priceUpper = 10000,
    double? rating = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TrainerList',
      apiUrl: 'http://92.255.111.91:8080/api/v1/catalog',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'type': type,
        'experienceBottom': experienceBottom,
        'expirienceUpper': expirienceUpper,
        'query': query,
        'pricebottom': priceBottom,
        'priceupper': priceUpper,
        'rating': rating,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatar(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].avatar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? services(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].trainer.services''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? forservices(dynamic response) => getJsonField(
        response,
        r'''$.data[:].trainer''',
        true,
      ) as List?;
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class TinderCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'tinder',
      apiUrl: 'http://92.255.111.91:8080/api/v1/tinder',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? uid(dynamic response) => (getJsonField(
        response,
        r'''$[:].clientId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? age(dynamic response) => (getJsonField(
        response,
        r'''$[:].age''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? city(dynamic response) => (getJsonField(
        response,
        r'''$[:].city''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? avatar(dynamic response) => (getJsonField(
        response,
        r'''$[:].avatar''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TinderDislikeCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "viewedId": "${uid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TinderDislike',
      apiUrl: 'http://92.255.111.91:8080/api/v1/tinder/dislike',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TinderLikeCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "viewedId": "${uid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TinderLike',
      apiUrl: 'http://92.255.111.91:8080/api/v1/tinder/like',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GalleryCall {
  static Future<ApiCallResponse> call({
    String? clientId = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'gallery',
      apiUrl: 'http://92.255.111.91:8080/api/v1/gallery/${clientId}',
      callType: ApiCallType.GET,
      headers: {
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? imageUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].imageUrl''',
      ));
}

class EditProfileCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? email = '',
    String? name = '',
    String? birthdate = '',
    String? city = '',
    String? description = '',
    int? expirience,
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "name": "${name}",
  "birthDate": "${birthdate}",
  "city": "${city}",
  "description": "${description}",
  "experience": ${expirience}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'EditProfile',
      apiUrl: 'http://92.255.111.91:8080/api/v1/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GallerysendphotoCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? photo,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'gallerysendphoto',
      apiUrl: 'http://92.255.111.91:8080/api/v1/gallery',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {
        'photo': photo,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TrainerProfileCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TrainerProfile',
      apiUrl: 'http://92.255.111.91:8080/api/v1/profile/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? avatar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.avatar''',
      ));
  static int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.trainerInfo.price''',
      ));
}

class GallerydeleteCall {
  static Future<ApiCallResponse> call({
    String? galleryID = '',
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'gallerydelete',
      apiUrl: 'http://92.255.111.91:8080/api/v1/gallery/${galleryID}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'accept': '*/*',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FeedbackCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? string = '',
  }) async {
    final ffApiRequestBody = '''
"${string}"''';
    return ApiManager.instance.makeApiCall(
      callName: 'Feedback',
      apiUrl: 'http://92.255.111.91:8080/api/v1/feedback',
      callType: ApiCallType.POST,
      headers: {
        'accept': '*/*',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
