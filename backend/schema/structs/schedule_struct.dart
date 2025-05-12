// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleStruct extends FFFirebaseStruct {
  ScheduleStruct({
    int? monday,
    int? tuesday,
    int? wednesday,
    int? thursday,
    int? friday,
    int? saturday,
    int? sunday,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday,
        _saturday = saturday,
        _sunday = sunday,
        super(firestoreUtilData);

  // "monday" field.
  int? _monday;
  int get monday => _monday ?? 0;
  set monday(int? val) {
    _monday = val;
    debugLog();
  }

  void incrementMonday(int amount) => monday = monday + amount;

  bool hasMonday() => _monday != null;

  // "tuesday" field.
  int? _tuesday;
  int get tuesday => _tuesday ?? 0;
  set tuesday(int? val) {
    _tuesday = val;
    debugLog();
  }

  void incrementTuesday(int amount) => tuesday = tuesday + amount;

  bool hasTuesday() => _tuesday != null;

  // "wednesday" field.
  int? _wednesday;
  int get wednesday => _wednesday ?? 0;
  set wednesday(int? val) {
    _wednesday = val;
    debugLog();
  }

  void incrementWednesday(int amount) => wednesday = wednesday + amount;

  bool hasWednesday() => _wednesday != null;

  // "thursday" field.
  int? _thursday;
  int get thursday => _thursday ?? 0;
  set thursday(int? val) {
    _thursday = val;
    debugLog();
  }

  void incrementThursday(int amount) => thursday = thursday + amount;

  bool hasThursday() => _thursday != null;

  // "friday" field.
  int? _friday;
  int get friday => _friday ?? 0;
  set friday(int? val) {
    _friday = val;
    debugLog();
  }

  void incrementFriday(int amount) => friday = friday + amount;

  bool hasFriday() => _friday != null;

  // "saturday" field.
  int? _saturday;
  int get saturday => _saturday ?? 0;
  set saturday(int? val) {
    _saturday = val;
    debugLog();
  }

  void incrementSaturday(int amount) => saturday = saturday + amount;

  bool hasSaturday() => _saturday != null;

  // "sunday" field.
  int? _sunday;
  int get sunday => _sunday ?? 0;
  set sunday(int? val) {
    _sunday = val;
    debugLog();
  }

  void incrementSunday(int amount) => sunday = sunday + amount;

  bool hasSunday() => _sunday != null;

  static ScheduleStruct fromMap(Map<String, dynamic> data) => ScheduleStruct(
        monday: castToType<int>(data['monday']),
        tuesday: castToType<int>(data['tuesday']),
        wednesday: castToType<int>(data['wednesday']),
        thursday: castToType<int>(data['thursday']),
        friday: castToType<int>(data['friday']),
        saturday: castToType<int>(data['saturday']),
        sunday: castToType<int>(data['sunday']),
      );

  static ScheduleStruct? maybeFromMap(dynamic data) =>
      data is Map ? ScheduleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'monday': _monday,
        'tuesday': _tuesday,
        'wednesday': _wednesday,
        'thursday': _thursday,
        'friday': _friday,
        'saturday': _saturday,
        'sunday': _sunday,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'monday': serializeParam(
          _monday,
          ParamType.int,
        ),
        'tuesday': serializeParam(
          _tuesday,
          ParamType.int,
        ),
        'wednesday': serializeParam(
          _wednesday,
          ParamType.int,
        ),
        'thursday': serializeParam(
          _thursday,
          ParamType.int,
        ),
        'friday': serializeParam(
          _friday,
          ParamType.int,
        ),
        'saturday': serializeParam(
          _saturday,
          ParamType.int,
        ),
        'sunday': serializeParam(
          _sunday,
          ParamType.int,
        ),
      }.withoutNulls;

  static ScheduleStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScheduleStruct(
        monday: deserializeParam(
          data['monday'],
          ParamType.int,
          false,
        ),
        tuesday: deserializeParam(
          data['tuesday'],
          ParamType.int,
          false,
        ),
        wednesday: deserializeParam(
          data['wednesday'],
          ParamType.int,
          false,
        ),
        thursday: deserializeParam(
          data['thursday'],
          ParamType.int,
          false,
        ),
        friday: deserializeParam(
          data['friday'],
          ParamType.int,
          false,
        ),
        saturday: deserializeParam(
          data['saturday'],
          ParamType.int,
          false,
        ),
        sunday: deserializeParam(
          data['sunday'],
          ParamType.int,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'monday': debugSerializeParam(
          monday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'tuesday': debugSerializeParam(
          tuesday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'wednesday': debugSerializeParam(
          wednesday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'thursday': debugSerializeParam(
          thursday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'friday': debugSerializeParam(
          friday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'saturday': debugSerializeParam(
          saturday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'sunday': debugSerializeParam(
          sunday,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ScheduleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScheduleStruct &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday &&
        sunday == other.sunday;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([monday, tuesday, wednesday, thursday, friday, saturday, sunday]);
}

ScheduleStruct createScheduleStruct({
  int? monday,
  int? tuesday,
  int? wednesday,
  int? thursday,
  int? friday,
  int? saturday,
  int? sunday,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ScheduleStruct(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ScheduleStruct? updateScheduleStruct(
  ScheduleStruct? schedule, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    schedule
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addScheduleStructData(
  Map<String, dynamic> firestoreData,
  ScheduleStruct? schedule,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (schedule == null) {
    return;
  }
  if (schedule.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && schedule.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final scheduleData = getScheduleFirestoreData(schedule, forFieldValue);
  final nestedData = scheduleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = schedule.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getScheduleFirestoreData(
  ScheduleStruct? schedule, [
  bool forFieldValue = false,
]) {
  if (schedule == null) {
    return {};
  }
  final firestoreData = mapToFirestore(schedule.toMap());

  // Add any Firestore field values
  schedule.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getScheduleListFirestoreData(
  List<ScheduleStruct>? schedules,
) =>
    schedules?.map((e) => getScheduleFirestoreData(e, true)).toList() ?? [];
