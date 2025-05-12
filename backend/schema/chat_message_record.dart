import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatMessageRecord extends FirestoreRecord {
  ChatMessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "NameofSender" field.
  String? _nameofSender;
  String get nameofSender => _nameofSender ?? '';
  bool hasNameofSender() => _nameofSender != null;

  // "IdOfSender" field.
  String? _idOfSender;
  String get idOfSender => _idOfSender ?? '';
  bool hasIdOfSender() => _idOfSender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _nameofSender = snapshotData['NameofSender'] as String?;
    _idOfSender = snapshotData['IdOfSender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ChatMessage')
          : FirebaseFirestore.instance.collectionGroup('ChatMessage');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('ChatMessage').doc(id);

  static Stream<ChatMessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatMessageRecord.fromSnapshot(s));

  static Future<ChatMessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatMessageRecord.fromSnapshot(s));

  static ChatMessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatMessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatMessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatMessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatMessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatMessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: '',
          nullable: false,
        ),
        'message': debugSerializeParam(
          message,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'TimeStamp': debugSerializeParam(
          timeStamp,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'NameofSender': debugSerializeParam(
          nameofSender,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'IdOfSender': debugSerializeParam(
          idOfSender,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createChatMessageRecordData({
  String? message,
  DateTime? timeStamp,
  String? nameofSender,
  String? idOfSender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'TimeStamp': timeStamp,
      'NameofSender': nameofSender,
      'IdOfSender': idOfSender,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatMessageRecordDocumentEquality implements Equality<ChatMessageRecord> {
  const ChatMessageRecordDocumentEquality();

  @override
  bool equals(ChatMessageRecord? e1, ChatMessageRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.nameofSender == e2?.nameofSender &&
        e1?.idOfSender == e2?.idOfSender;
  }

  @override
  int hash(ChatMessageRecord? e) => const ListEquality()
      .hash([e?.message, e?.timeStamp, e?.nameofSender, e?.idOfSender]);

  @override
  bool isValidKey(Object? o) => o is ChatMessageRecord;
}
