// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesschemaStruct extends FFFirebaseStruct {
  ServicesschemaStruct({
    List<String>? servicesschema,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _servicesschema =
            servicesschema != null ? LoggableList(servicesschema) : null,
        super(firestoreUtilData);

  // "Servicesschema" field.
  LoggableList<String>? _servicesschema;
  List<String> get servicesschema =>
      (_servicesschema ?? LoggableList(const []))..logger = logger;
  set servicesschema(List<String>? val) {
    if (val != null) {
      _servicesschema = LoggableList(val);
    } else {
      _servicesschema = null;
    }
    debugLog();
  }

  void updateServicesschema(Function(List<String>) updateFn) {
    updateFn(_servicesschema ??= LoggableList([]));
    debugLog();
  }

  bool hasServicesschema() => _servicesschema != null;

  static ServicesschemaStruct fromMap(Map<String, dynamic> data) =>
      ServicesschemaStruct(
        servicesschema: getDataList(data['Servicesschema']),
      );

  static ServicesschemaStruct? maybeFromMap(dynamic data) => data is Map
      ? ServicesschemaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Servicesschema': _servicesschema,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Servicesschema': serializeParam(
          _servicesschema,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static ServicesschemaStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServicesschemaStruct(
        servicesschema: deserializeParam<String>(
          data['Servicesschema'],
          ParamType.String,
          true,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'Servicesschema': debugSerializeParam(
          _servicesschema,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ServicesschemaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ServicesschemaStruct &&
        listEquality.equals(servicesschema, other.servicesschema);
  }

  @override
  int get hashCode => const ListEquality().hash([servicesschema]);
}

ServicesschemaStruct createServicesschemaStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ServicesschemaStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ServicesschemaStruct? updateServicesschemaStruct(
  ServicesschemaStruct? servicesschemaStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    servicesschemaStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addServicesschemaStructData(
  Map<String, dynamic> firestoreData,
  ServicesschemaStruct? servicesschemaStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (servicesschemaStruct == null) {
    return;
  }
  if (servicesschemaStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && servicesschemaStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final servicesschemaStructData =
      getServicesschemaFirestoreData(servicesschemaStruct, forFieldValue);
  final nestedData =
      servicesschemaStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      servicesschemaStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getServicesschemaFirestoreData(
  ServicesschemaStruct? servicesschemaStruct, [
  bool forFieldValue = false,
]) {
  if (servicesschemaStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(servicesschemaStruct.toMap());

  // Add any Firestore field values
  servicesschemaStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getServicesschemaListFirestoreData(
  List<ServicesschemaStruct>? servicesschemaStructs,
) =>
    servicesschemaStructs
        ?.map((e) => getServicesschemaFirestoreData(e, true))
        .toList() ??
    [];
