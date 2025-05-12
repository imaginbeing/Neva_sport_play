// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageViewStruct extends FFFirebaseStruct {
  MessageViewStruct({
    String? text,
    String? senderId,
    bool? myMessage,
    String? avatar,
    String? dateTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _text = text,
        _senderId = senderId,
        _myMessage = myMessage,
        _avatar = avatar,
        _dateTime = dateTime,
        super(firestoreUtilData);

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) {
    _text = val;
    debugLog();
  }

  bool hasText() => _text != null;

  // "senderId" field.
  String? _senderId;
  String get senderId => _senderId ?? '';
  set senderId(String? val) {
    _senderId = val;
    debugLog();
  }

  bool hasSenderId() => _senderId != null;

  // "myMessage" field.
  bool? _myMessage;
  bool get myMessage => _myMessage ?? false;
  set myMessage(bool? val) {
    _myMessage = val;
    debugLog();
  }

  bool hasMyMessage() => _myMessage != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) {
    _avatar = val;
    debugLog();
  }

  bool hasAvatar() => _avatar != null;

  // "dateTime" field.
  String? _dateTime;
  String get dateTime => _dateTime ?? '';
  set dateTime(String? val) {
    _dateTime = val;
    debugLog();
  }

  bool hasDateTime() => _dateTime != null;

  static MessageViewStruct fromMap(Map<String, dynamic> data) =>
      MessageViewStruct(
        text: data['text'] as String?,
        senderId: data['senderId'] as String?,
        myMessage: data['myMessage'] as bool?,
        avatar: data['avatar'] as String?,
        dateTime: data['dateTime'] as String?,
      );

  static MessageViewStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'text': _text,
        'senderId': _senderId,
        'myMessage': _myMessage,
        'avatar': _avatar,
        'dateTime': _dateTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'senderId': serializeParam(
          _senderId,
          ParamType.String,
        ),
        'myMessage': serializeParam(
          _myMessage,
          ParamType.bool,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'dateTime': serializeParam(
          _dateTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessageViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageViewStruct(
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        senderId: deserializeParam(
          data['senderId'],
          ParamType.String,
          false,
        ),
        myMessage: deserializeParam(
          data['myMessage'],
          ParamType.bool,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        dateTime: deserializeParam(
          data['dateTime'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'text': debugSerializeParam(
          text,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'senderId': debugSerializeParam(
          senderId,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'myMessage': debugSerializeParam(
          myMessage,
          ParamType.bool,
          name: 'bool',
          nullable: false,
        ),
        'avatar': debugSerializeParam(
          avatar,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'dateTime': debugSerializeParam(
          dateTime,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'MessageViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageViewStruct &&
        text == other.text &&
        senderId == other.senderId &&
        myMessage == other.myMessage &&
        avatar == other.avatar &&
        dateTime == other.dateTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([text, senderId, myMessage, avatar, dateTime]);
}

MessageViewStruct createMessageViewStruct({
  String? text,
  String? senderId,
  bool? myMessage,
  String? avatar,
  String? dateTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageViewStruct(
      text: text,
      senderId: senderId,
      myMessage: myMessage,
      avatar: avatar,
      dateTime: dateTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageViewStruct? updateMessageViewStruct(
  MessageViewStruct? messageView, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageView
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageViewStructData(
  Map<String, dynamic> firestoreData,
  MessageViewStruct? messageView,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageView == null) {
    return;
  }
  if (messageView.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageView.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageViewData =
      getMessageViewFirestoreData(messageView, forFieldValue);
  final nestedData =
      messageViewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messageView.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageViewFirestoreData(
  MessageViewStruct? messageView, [
  bool forFieldValue = false,
]) {
  if (messageView == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageView.toMap());

  // Add any Firestore field values
  messageView.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageViewListFirestoreData(
  List<MessageViewStruct>? messageViews,
) =>
    messageViews?.map((e) => getMessageViewFirestoreData(e, true)).toList() ??
    [];
