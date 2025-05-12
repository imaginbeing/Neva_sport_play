// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatDetailsStruct extends FFFirebaseStruct {
  ChatDetailsStruct({
    String? chatId,
    String? addressatId,
    String? name,
    String? avatar,
    List<MessageViewStruct>? messages,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chatId = chatId,
        _addressatId = addressatId,
        _name = name,
        _avatar = avatar,
        _messages = messages != null ? LoggableList(messages) : null,
        super(firestoreUtilData);

  // "chatId" field.
  String? _chatId;
  String get chatId => _chatId ?? '';
  set chatId(String? val) {
    _chatId = val;
    debugLog();
  }

  bool hasChatId() => _chatId != null;

  // "AddressatId" field.
  String? _addressatId;
  String get addressatId => _addressatId ?? '';
  set addressatId(String? val) {
    _addressatId = val;
    debugLog();
  }

  bool hasAddressatId() => _addressatId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) {
    _avatar = val;
    debugLog();
  }

  bool hasAvatar() => _avatar != null;

  // "messages" field.
  LoggableList<MessageViewStruct>? _messages;
  List<MessageViewStruct> get messages =>
      (_messages ?? LoggableList(const []))..logger = logger;
  set messages(List<MessageViewStruct>? val) {
    if (val != null) {
      _messages = LoggableList(val);
    } else {
      _messages = null;
    }
    debugLog();
  }

  void updateMessages(Function(List<MessageViewStruct>) updateFn) {
    updateFn(_messages ??= LoggableList([]));
    debugLog();
  }

  bool hasMessages() => _messages != null;

  static ChatDetailsStruct fromMap(Map<String, dynamic> data) =>
      ChatDetailsStruct(
        chatId: data['chatId'] as String?,
        addressatId: data['AddressatId'] as String?,
        name: data['name'] as String?,
        avatar: data['avatar'] as String?,
        messages: getStructList(
          data['messages'],
          MessageViewStruct.fromMap,
        ),
      );

  static ChatDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chatId': _chatId,
        'AddressatId': _addressatId,
        'name': _name,
        'avatar': _avatar,
        'messages': _messages?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chatId': serializeParam(
          _chatId,
          ParamType.String,
        ),
        'AddressatId': serializeParam(
          _addressatId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'messages': serializeParam(
          _messages,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ChatDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatDetailsStruct(
        chatId: deserializeParam(
          data['chatId'],
          ParamType.String,
          false,
        ),
        addressatId: deserializeParam(
          data['AddressatId'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        messages: deserializeStructParam<MessageViewStruct>(
          data['messages'],
          ParamType.DataStruct,
          true,
          structBuilder: MessageViewStruct.fromSerializableMap,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'chatId': debugSerializeParam(
          chatId,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'AddressatId': debugSerializeParam(
          addressatId,
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
        'avatar': debugSerializeParam(
          avatar,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'messages': debugSerializeParam(
          _messages,
          ParamType.DataStruct,
          isList: true,
          name: 'MessageView',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ChatDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ChatDetailsStruct &&
        chatId == other.chatId &&
        addressatId == other.addressatId &&
        name == other.name &&
        avatar == other.avatar &&
        listEquality.equals(messages, other.messages);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([chatId, addressatId, name, avatar, messages]);
}

ChatDetailsStruct createChatDetailsStruct({
  String? chatId,
  String? addressatId,
  String? name,
  String? avatar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatDetailsStruct(
      chatId: chatId,
      addressatId: addressatId,
      name: name,
      avatar: avatar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatDetailsStruct? updateChatDetailsStruct(
  ChatDetailsStruct? chatDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatDetailsStructData(
  Map<String, dynamic> firestoreData,
  ChatDetailsStruct? chatDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatDetails == null) {
    return;
  }
  if (chatDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatDetailsData =
      getChatDetailsFirestoreData(chatDetails, forFieldValue);
  final nestedData =
      chatDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatDetailsFirestoreData(
  ChatDetailsStruct? chatDetails, [
  bool forFieldValue = false,
]) {
  if (chatDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatDetails.toMap());

  // Add any Firestore field values
  chatDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatDetailsListFirestoreData(
  List<ChatDetailsStruct>? chatDetailss,
) =>
    chatDetailss?.map((e) => getChatDetailsFirestoreData(e, true)).toList() ??
    [];
