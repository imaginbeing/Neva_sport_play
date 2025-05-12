// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatViewStruct extends FFFirebaseStruct {
  ChatViewStruct({
    String? clientId,
    String? addressId,
    String? name,
    String? lastMessage,
    String? lastTime,
    String? avatar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _clientId = clientId,
        _addressId = addressId,
        _name = name,
        _lastMessage = lastMessage,
        _lastTime = lastTime,
        _avatar = avatar,
        super(firestoreUtilData);

  // "clientId" field.
  String? _clientId;
  String get clientId => _clientId ?? '';
  set clientId(String? val) {
    _clientId = val;
    debugLog();
  }

  bool hasClientId() => _clientId != null;

  // "addressId" field.
  String? _addressId;
  String get addressId => _addressId ?? '';
  set addressId(String? val) {
    _addressId = val;
    debugLog();
  }

  bool hasAddressId() => _addressId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "lastMessage" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  set lastMessage(String? val) {
    _lastMessage = val;
    debugLog();
  }

  bool hasLastMessage() => _lastMessage != null;

  // "lastTime" field.
  String? _lastTime;
  String get lastTime => _lastTime ?? '';
  set lastTime(String? val) {
    _lastTime = val;
    debugLog();
  }

  bool hasLastTime() => _lastTime != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) {
    _avatar = val;
    debugLog();
  }

  bool hasAvatar() => _avatar != null;

  static ChatViewStruct fromMap(Map<String, dynamic> data) => ChatViewStruct(
        clientId: data['clientId'] as String?,
        addressId: data['addressId'] as String?,
        name: data['name'] as String?,
        lastMessage: data['lastMessage'] as String?,
        lastTime: data['lastTime'] as String?,
        avatar: data['avatar'] as String?,
      );

  static ChatViewStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChatViewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'clientId': _clientId,
        'addressId': _addressId,
        'name': _name,
        'lastMessage': _lastMessage,
        'lastTime': _lastTime,
        'avatar': _avatar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'clientId': serializeParam(
          _clientId,
          ParamType.String,
        ),
        'addressId': serializeParam(
          _addressId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lastMessage': serializeParam(
          _lastMessage,
          ParamType.String,
        ),
        'lastTime': serializeParam(
          _lastTime,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatViewStruct(
        clientId: deserializeParam(
          data['clientId'],
          ParamType.String,
          false,
        ),
        addressId: deserializeParam(
          data['addressId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        lastMessage: deserializeParam(
          data['lastMessage'],
          ParamType.String,
          false,
        ),
        lastTime: deserializeParam(
          data['lastTime'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'clientId': debugSerializeParam(
          clientId,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'addressId': debugSerializeParam(
          addressId,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'name': debugSerializeParam(
          name,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'lastMessage': debugSerializeParam(
          lastMessage,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'lastTime': debugSerializeParam(
          lastTime,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'avatar': debugSerializeParam(
          avatar,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ChatViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatViewStruct &&
        clientId == other.clientId &&
        addressId == other.addressId &&
        name == other.name &&
        lastMessage == other.lastMessage &&
        lastTime == other.lastTime &&
        avatar == other.avatar;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([clientId, addressId, name, lastMessage, lastTime, avatar]);
}

ChatViewStruct createChatViewStruct({
  String? clientId,
  String? addressId,
  String? name,
  String? lastMessage,
  String? lastTime,
  String? avatar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatViewStruct(
      clientId: clientId,
      addressId: addressId,
      name: name,
      lastMessage: lastMessage,
      lastTime: lastTime,
      avatar: avatar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatViewStruct? updateChatViewStruct(
  ChatViewStruct? chatView, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatView
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatViewStructData(
  Map<String, dynamic> firestoreData,
  ChatViewStruct? chatView,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatView == null) {
    return;
  }
  if (chatView.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatView.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatViewData = getChatViewFirestoreData(chatView, forFieldValue);
  final nestedData = chatViewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatView.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatViewFirestoreData(
  ChatViewStruct? chatView, [
  bool forFieldValue = false,
]) {
  if (chatView == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatView.toMap());

  // Add any Firestore field values
  chatView.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatViewListFirestoreData(
  List<ChatViewStruct>? chatViews,
) =>
    chatViews?.map((e) => getChatViewFirestoreData(e, true)).toList() ?? [];
