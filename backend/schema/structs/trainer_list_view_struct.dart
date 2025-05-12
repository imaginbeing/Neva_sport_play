// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainerListViewStruct extends FFFirebaseStruct {
  TrainerListViewStruct({
    List<String>? services,
    int? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _services = services != null ? LoggableList(services) : null,
        _price = price,
        super(firestoreUtilData);

  // "services" field.
  LoggableList<String>? _services;
  List<String> get services =>
      (_services ?? LoggableList(const []))..logger = logger;
  set services(List<String>? val) {
    if (val != null) {
      _services = LoggableList(val);
    } else {
      _services = null;
    }
    debugLog();
  }

  void updateServices(Function(List<String>) updateFn) {
    updateFn(_services ??= LoggableList([]));
    debugLog();
  }

  bool hasServices() => _services != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) {
    _price = val;
    debugLog();
  }

  void incrementPrice(int amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static TrainerListViewStruct fromMap(Map<String, dynamic> data) =>
      TrainerListViewStruct(
        services: getDataList(data['services']),
        price: castToType<int>(data['price']),
      );

  static TrainerListViewStruct? maybeFromMap(dynamic data) => data is Map
      ? TrainerListViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'services': _services,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'services': serializeParam(
          _services,
          ParamType.String,
          isList: true,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
      }.withoutNulls;

  static TrainerListViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrainerListViewStruct(
        services: deserializeParam<String>(
          data['services'],
          ParamType.String,
          true,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'services': debugSerializeParam(
          _services,
          ParamType.String,
          isList: true,
          name: 'String',
          nullable: false,
        ),
        'price': debugSerializeParam(
          price,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
      };

  @override
  String toString() => 'TrainerListViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TrainerListViewStruct &&
        listEquality.equals(services, other.services) &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([services, price]);
}

TrainerListViewStruct createTrainerListViewStruct({
  int? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrainerListViewStruct(
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrainerListViewStruct? updateTrainerListViewStruct(
  TrainerListViewStruct? trainerListView, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trainerListView
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrainerListViewStructData(
  Map<String, dynamic> firestoreData,
  TrainerListViewStruct? trainerListView,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trainerListView == null) {
    return;
  }
  if (trainerListView.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trainerListView.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trainerListViewData =
      getTrainerListViewFirestoreData(trainerListView, forFieldValue);
  final nestedData =
      trainerListViewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = trainerListView.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrainerListViewFirestoreData(
  TrainerListViewStruct? trainerListView, [
  bool forFieldValue = false,
]) {
  if (trainerListView == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trainerListView.toMap());

  // Add any Firestore field values
  trainerListView.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrainerListViewListFirestoreData(
  List<TrainerListViewStruct>? trainerListViews,
) =>
    trainerListViews
        ?.map((e) => getTrainerListViewFirestoreData(e, true))
        .toList() ??
    [];
