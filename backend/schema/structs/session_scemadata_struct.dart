// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionScemadataStruct extends FFFirebaseStruct {
  SessionScemadataStruct({
    String? id,
    String? player,
    String? trainer,
    String? date,
    String? time,
    int? price,
    int? status,
    String? place,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _player = player,
        _trainer = trainer,
        _date = date,
        _time = time,
        _price = price,
        _status = status,
        _place = place,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) {
    _id = val;
    debugLog();
  }

  bool hasId() => _id != null;

  // "player" field.
  String? _player;
  String get player => _player ?? '';
  set player(String? val) {
    _player = val;
    debugLog();
  }

  bool hasPlayer() => _player != null;

  // "trainer" field.
  String? _trainer;
  String get trainer => _trainer ?? '';
  set trainer(String? val) {
    _trainer = val;
    debugLog();
  }

  bool hasTrainer() => _trainer != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) {
    _date = val;
    debugLog();
  }

  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) {
    _time = val;
    debugLog();
  }

  bool hasTime() => _time != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) {
    _price = val;
    debugLog();
  }

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) {
    _status = val;
    debugLog();
  }

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "place" field.
  String? _place;
  String get place => _place ?? '';
  set place(String? val) {
    _place = val;
    debugLog();
  }

  bool hasPlace() => _place != null;

  static SessionScemadataStruct fromMap(Map<String, dynamic> data) =>
      SessionScemadataStruct(
        id: data['id'] as String?,
        player: data['player'] as String?,
        trainer: data['trainer'] as String?,
        date: data['date'] as String?,
        time: data['time'] as String?,
        price: castToType<int>(data['price']),
        status: castToType<int>(data['status']),
        place: data['place'] as String?,
      );

  static SessionScemadataStruct? maybeFromMap(dynamic data) => data is Map
      ? SessionScemadataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'player': _player,
        'trainer': _trainer,
        'date': _date,
        'time': _time,
        'price': _price,
        'status': _status,
        'place': _place,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'player': serializeParam(
          _player,
          ParamType.String,
        ),
        'trainer': serializeParam(
          _trainer,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'place': serializeParam(
          _place,
          ParamType.String,
        ),
      }.withoutNulls;

  static SessionScemadataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SessionScemadataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        player: deserializeParam(
          data['player'],
          ParamType.String,
          false,
        ),
        trainer: deserializeParam(
          data['trainer'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        place: deserializeParam(
          data['place'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'id': debugSerializeParam(
          id,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'player': debugSerializeParam(
          player,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'trainer': debugSerializeParam(
          trainer,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'date': debugSerializeParam(
          date,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'time': debugSerializeParam(
          time,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'price': debugSerializeParam(
          price,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'status': debugSerializeParam(
          status,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'place': debugSerializeParam(
          place,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'SessionScemadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SessionScemadataStruct &&
        id == other.id &&
        player == other.player &&
        trainer == other.trainer &&
        date == other.date &&
        time == other.time &&
        price == other.price &&
        status == other.status &&
        place == other.place;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, player, trainer, date, time, price, status, place]);
}

SessionScemadataStruct createSessionScemadataStruct({
  String? id,
  String? player,
  String? trainer,
  String? date,
  String? time,
  int? price,
  int? status,
  String? place,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SessionScemadataStruct(
      id: id,
      player: player,
      trainer: trainer,
      date: date,
      time: time,
      price: price,
      status: status,
      place: place,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SessionScemadataStruct? updateSessionScemadataStruct(
  SessionScemadataStruct? sessionScemadata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sessionScemadata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSessionScemadataStructData(
  Map<String, dynamic> firestoreData,
  SessionScemadataStruct? sessionScemadata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sessionScemadata == null) {
    return;
  }
  if (sessionScemadata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sessionScemadata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sessionScemadataData =
      getSessionScemadataFirestoreData(sessionScemadata, forFieldValue);
  final nestedData =
      sessionScemadataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sessionScemadata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSessionScemadataFirestoreData(
  SessionScemadataStruct? sessionScemadata, [
  bool forFieldValue = false,
]) {
  if (sessionScemadata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sessionScemadata.toMap());

  // Add any Firestore field values
  sessionScemadata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSessionScemadataListFirestoreData(
  List<SessionScemadataStruct>? sessionScemadatas,
) =>
    sessionScemadatas
        ?.map((e) => getSessionScemadataFirestoreData(e, true))
        .toList() ??
    [];
