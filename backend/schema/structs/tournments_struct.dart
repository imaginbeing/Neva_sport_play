// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournmentsStruct extends FFFirebaseStruct {
  TournmentsStruct({
    int? count,
    int? skip,
    int? total,
    List<TournmentsdataStruct>? data,
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
  LoggableList<TournmentsdataStruct>? _data;
  List<TournmentsdataStruct> get data =>
      (_data ?? LoggableList(const []))..logger = logger;
  set data(List<TournmentsdataStruct>? val) {
    if (val != null) {
      _data = LoggableList(val);
    } else {
      _data = null;
    }
    debugLog();
  }

  void updateData(Function(List<TournmentsdataStruct>) updateFn) {
    updateFn(_data ??= LoggableList([]));
    debugLog();
  }

  bool hasData() => _data != null;

  static TournmentsStruct fromMap(Map<String, dynamic> data) =>
      TournmentsStruct(
        count: castToType<int>(data['count']),
        skip: castToType<int>(data['skip']),
        total: castToType<int>(data['total']),
        data: getStructList(
          data['data'],
          TournmentsdataStruct.fromMap,
        ),
      );

  static TournmentsStruct? maybeFromMap(dynamic data) => data is Map
      ? TournmentsStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static TournmentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournmentsStruct(
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
        data: deserializeStructParam<TournmentsdataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: TournmentsdataStruct.fromSerializableMap,
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
          name: 'tournmentsdata',
          nullable: false,
        ),
      };

  @override
  String toString() => 'TournmentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TournmentsStruct &&
        count == other.count &&
        skip == other.skip &&
        total == other.total &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([count, skip, total, data]);
}

TournmentsStruct createTournmentsStruct({
  int? count,
  int? skip,
  int? total,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TournmentsStruct(
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

TournmentsStruct? updateTournmentsStruct(
  TournmentsStruct? tournments, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tournments
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTournmentsStructData(
  Map<String, dynamic> firestoreData,
  TournmentsStruct? tournments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tournments == null) {
    return;
  }
  if (tournments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tournments.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tournmentsData = getTournmentsFirestoreData(tournments, forFieldValue);
  final nestedData = tournmentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tournments.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTournmentsFirestoreData(
  TournmentsStruct? tournments, [
  bool forFieldValue = false,
]) {
  if (tournments == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tournments.toMap());

  // Add any Firestore field values
  tournments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTournmentsListFirestoreData(
  List<TournmentsStruct>? tournmentss,
) =>
    tournmentss?.map((e) => getTournmentsFirestoreData(e, true)).toList() ?? [];
