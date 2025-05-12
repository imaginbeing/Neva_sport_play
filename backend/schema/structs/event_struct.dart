// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventStruct extends FFFirebaseStruct {
  EventStruct({
    int? count,
    int? skip,
    int? total,
    List<EventDataStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _count = count,
        _skip = skip,
        _total = total,
        _data = data != null ? LoggableList(data) : null,
        super(firestoreUtilData);

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) {
    _count = val;
    debugLog();
  }

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "skip" field.
  int? _skip;
  int get skip => _skip ?? 0;
  set skip(int? val) {
    _skip = val;
    debugLog();
  }

  void incrementSkip(int amount) => skip = skip + amount;

  bool hasSkip() => _skip != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) {
    _total = val;
    debugLog();
  }

  void incrementTotal(int amount) => total = total + amount;

  bool hasTotal() => _total != null;

  // "data" field.
  LoggableList<EventDataStruct>? _data;
  List<EventDataStruct> get data =>
      (_data ?? LoggableList(const []))..logger = logger;
  set data(List<EventDataStruct>? val) {
    if (val != null) {
      _data = LoggableList(val);
    } else {
      _data = null;
    }
    debugLog();
  }

  void updateData(Function(List<EventDataStruct>) updateFn) {
    updateFn(_data ??= LoggableList([]));
    debugLog();
  }

  bool hasData() => _data != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        count: castToType<int>(data['count']),
        skip: castToType<int>(data['skip']),
        total: castToType<int>(data['total']),
        data: getStructList(
          data['data'],
          EventDataStruct.fromMap,
        ),
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'skip': _skip,
        'total': _total,
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'skip': serializeParam(
          _skip,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        skip: deserializeParam(
          data['skip'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
        data: deserializeStructParam<EventDataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: EventDataStruct.fromSerializableMap,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'count': debugSerializeParam(
          count,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'skip': debugSerializeParam(
          skip,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'total': debugSerializeParam(
          total,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'data': debugSerializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
          name: 'eventData',
          nullable: false,
        ),
      };

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EventStruct &&
        count == other.count &&
        skip == other.skip &&
        total == other.total &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([count, skip, total, data]);
}

EventStruct createEventStruct({
  int? count,
  int? skip,
  int? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventStruct(
      count: count,
      skip: skip,
      total: total,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventStruct? updateEventStruct(
  EventStruct? event, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    event
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventStructData(
  Map<String, dynamic> firestoreData,
  EventStruct? event,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (event == null) {
    return;
  }
  if (event.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && event.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventData = getEventFirestoreData(event, forFieldValue);
  final nestedData = eventData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = event.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventFirestoreData(
  EventStruct? event, [
  bool forFieldValue = false,
]) {
  if (event == null) {
    return {};
  }
  final firestoreData = mapToFirestore(event.toMap());

  // Add any Firestore field values
  event.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventListFirestoreData(
  List<EventStruct>? events,
) =>
    events?.map((e) => getEventFirestoreData(e, true)).toList() ?? [];
