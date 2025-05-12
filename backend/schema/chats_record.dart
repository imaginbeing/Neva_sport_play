import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "LastMessage" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "UserNames" field.
  List<String>? _userNames;
  List<String> get userNames => _userNames ?? const [];
  bool hasUserNames() => _userNames != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "LastMessageSeenBy" field.
  List<String>? _lastMessageSeenBy;
  List<String> get lastMessageSeenBy => _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  // "usersId" field.
  List<String>? _usersId;
  List<String> get usersId => _usersId ?? const [];
  bool hasUsersId() => _usersId != null;

  void _initializeFields() {
    _lastMessage = snapshotData['LastMessage'] as String?;
    _userNames = getDataList(snapshotData['UserNames']);
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _lastMessageSeenBy = getDataList(snapshotData['LastMessageSeenBy']);
    _usersId = getDataList(snapshotData['usersId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
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
        'LastMessage': debugSerializeParam(
          lastMessage,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'UserNames': debugSerializeParam(
          userNames,
          ParamType.String,
          isList: true,
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
        'LastMessageSeenBy': debugSerializeParam(
          lastMessageSeenBy,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'usersId': debugSerializeParam(
          usersId,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createChatsRecordData({
  String? lastMessage,
  DateTime? timeStamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'LastMessage': lastMessage,
      'TimeStamp': timeStamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.lastMessage == e2?.lastMessage &&
        listEquality.equals(e1?.userNames, e2?.userNames) &&
        e1?.timeStamp == e2?.timeStamp &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy) &&
        listEquality.equals(e1?.usersId, e2?.usersId);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.lastMessage,
        e?.userNames,
        e?.timeStamp,
        e?.lastMessageSeenBy,
        e?.usersId
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
