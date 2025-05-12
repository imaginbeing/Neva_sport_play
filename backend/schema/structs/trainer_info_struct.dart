// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainerInfoStruct extends FFFirebaseStruct {
  TrainerInfoStruct({
    int? tennisAge,
    int? paddleAge,
    String? education,
    String? certificate,
    int? price,
    int? sessionDuration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tennisAge = tennisAge,
        _paddleAge = paddleAge,
        _education = education,
        _certificate = certificate,
        _price = price,
        _sessionDuration = sessionDuration,
        super(firestoreUtilData);

  // "tennisAge" field.
  int? _tennisAge;
  int get tennisAge => _tennisAge ?? 0;
  set tennisAge(int? val) {
    _tennisAge = val;
    debugLog();
  }

  void incrementTennisAge(int amount) => tennisAge = tennisAge + amount;

  bool hasTennisAge() => _tennisAge != null;

  // "paddleAge" field.
  int? _paddleAge;
  int get paddleAge => _paddleAge ?? 0;
  set paddleAge(int? val) {
    _paddleAge = val;
    debugLog();
  }

  void incrementPaddleAge(int amount) => paddleAge = paddleAge + amount;

  bool hasPaddleAge() => _paddleAge != null;

  // "education" field.
  String? _education;
  String get education => _education ?? '';
  set education(String? val) {
    _education = val;
    debugLog();
  }

  bool hasEducation() => _education != null;

  // "certificate" field.
  String? _certificate;
  String get certificate => _certificate ?? '';
  set certificate(String? val) {
    _certificate = val;
    debugLog();
  }

  bool hasCertificate() => _certificate != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) {
    _price = val;
    debugLog();
  }

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "sessionDuration" field.
  int? _sessionDuration;
  int get sessionDuration => _sessionDuration ?? 0;
  set sessionDuration(int? val) {
    _sessionDuration = val;
    debugLog();
  }

  void incrementSessionDuration(int amount) =>
      sessionDuration = sessionDuration + amount;

  bool hasSessionDuration() => _sessionDuration != null;

  static TrainerInfoStruct fromMap(Map<String, dynamic> data) =>
      TrainerInfoStruct(
        tennisAge: castToType<int>(data['tennisAge']),
        paddleAge: castToType<int>(data['paddleAge']),
        education: data['education'] as String?,
        certificate: data['certificate'] as String?,
        price: castToType<int>(data['price']),
        sessionDuration: castToType<int>(data['sessionDuration']),
      );

  static TrainerInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? TrainerInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tennisAge': _tennisAge,
        'paddleAge': _paddleAge,
        'education': _education,
        'certificate': _certificate,
        'price': _price,
        'sessionDuration': _sessionDuration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tennisAge': serializeParam(
          _tennisAge,
          ParamType.int,
        ),
        'paddleAge': serializeParam(
          _paddleAge,
          ParamType.int,
        ),
        'education': serializeParam(
          _education,
          ParamType.String,
        ),
        'certificate': serializeParam(
          _certificate,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'sessionDuration': serializeParam(
          _sessionDuration,
          ParamType.int,
        ),
      }.withoutNulls;

  static TrainerInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrainerInfoStruct(
        tennisAge: deserializeParam(
          data['tennisAge'],
          ParamType.int,
          false,
        ),
        paddleAge: deserializeParam(
          data['paddleAge'],
          ParamType.int,
          false,
        ),
        education: deserializeParam(
          data['education'],
          ParamType.String,
          false,
        ),
        certificate: deserializeParam(
          data['certificate'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        sessionDuration: deserializeParam(
          data['sessionDuration'],
          ParamType.int,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'tennisAge': debugSerializeParam(
          tennisAge,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'paddleAge': debugSerializeParam(
          paddleAge,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'education': debugSerializeParam(
          education,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'certificate': debugSerializeParam(
          certificate,
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
        'sessionDuration': debugSerializeParam(
          sessionDuration,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
      };

  @override
  String toString() => 'TrainerInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrainerInfoStruct &&
        tennisAge == other.tennisAge &&
        paddleAge == other.paddleAge &&
        education == other.education &&
        certificate == other.certificate &&
        price == other.price &&
        sessionDuration == other.sessionDuration;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [tennisAge, paddleAge, education, certificate, price, sessionDuration]);
}

TrainerInfoStruct createTrainerInfoStruct({
  int? tennisAge,
  int? paddleAge,
  String? education,
  String? certificate,
  int? price,
  int? sessionDuration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrainerInfoStruct(
      tennisAge: tennisAge,
      paddleAge: paddleAge,
      education: education,
      certificate: certificate,
      price: price,
      sessionDuration: sessionDuration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrainerInfoStruct? updateTrainerInfoStruct(
  TrainerInfoStruct? trainerInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trainerInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrainerInfoStructData(
  Map<String, dynamic> firestoreData,
  TrainerInfoStruct? trainerInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trainerInfo == null) {
    return;
  }
  if (trainerInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trainerInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trainerInfoData =
      getTrainerInfoFirestoreData(trainerInfo, forFieldValue);
  final nestedData =
      trainerInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trainerInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrainerInfoFirestoreData(
  TrainerInfoStruct? trainerInfo, [
  bool forFieldValue = false,
]) {
  if (trainerInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trainerInfo.toMap());

  // Add any Firestore field values
  trainerInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrainerInfoListFirestoreData(
  List<TrainerInfoStruct>? trainerInfos,
) =>
    trainerInfos?.map((e) => getTrainerInfoFirestoreData(e, true)).toList() ??
    [];
