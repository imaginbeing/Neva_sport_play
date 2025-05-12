// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatalogViewStruct extends FFFirebaseStruct {
  CatalogViewStruct({
    String? id,
    String? name,
    double? rating,
    int? experience,
    String? description,
    String? avatar,
    TrainerListViewStruct? trainer,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _rating = rating,
        _experience = experience,
        _description = description,
        _avatar = avatar,
        _trainer = trainer,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '0';
  set id(String? val) {
    _id = val;
    debugLog();
  }

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '0';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) {
    _rating = val;
    debugLog();
  }

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "experience" field.
  int? _experience;
  int get experience => _experience ?? 0;
  set experience(int? val) {
    _experience = val;
    debugLog();
  }

  void incrementExperience(int amount) => experience = experience + amount;

  bool hasExperience() => _experience != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '0';
  set description(String? val) {
    _description = val;
    debugLog();
  }

  bool hasDescription() => _description != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '0';
  set avatar(String? val) {
    _avatar = val;
    debugLog();
  }

  bool hasAvatar() => _avatar != null;

  // "trainer" field.
  TrainerListViewStruct? _trainer;
  TrainerListViewStruct get trainer =>
      (_trainer ?? TrainerListViewStruct())..logger = logger;
  set trainer(TrainerListViewStruct? val) {
    _trainer = val;
    debugLog();
  }

  void updateTrainer(Function(TrainerListViewStruct) updateFn) {
    updateFn(_trainer ??= TrainerListViewStruct());
    debugLog();
  }

  bool hasTrainer() => _trainer != null;

  static CatalogViewStruct fromMap(Map<String, dynamic> data) =>
      CatalogViewStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        rating: castToType<double>(data['rating']),
        experience: castToType<int>(data['experience']),
        description: data['description'] as String?,
        avatar: data['avatar'] as String?,
        trainer: TrainerListViewStruct.maybeFromMap(data['trainer']),
      );

  static CatalogViewStruct? maybeFromMap(dynamic data) => data is Map
      ? CatalogViewStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'rating': _rating,
        'experience': _experience,
        'description': _description,
        'avatar': _avatar,
        'trainer': _trainer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
        'experience': serializeParam(
          _experience,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'trainer': serializeParam(
          _trainer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CatalogViewStruct fromSerializableMap(Map<String, dynamic> data) =>
      CatalogViewStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
        experience: deserializeParam(
          data['experience'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        trainer: deserializeStructParam(
          data['trainer'],
          ParamType.DataStruct,
          false,
          structBuilder: TrainerListViewStruct.fromSerializableMap,
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
        'name': debugSerializeParam(
          name,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'rating': debugSerializeParam(
          rating,
          ParamType.double,
          name: 'double',
          nullable: false,
        ),
        'experience': debugSerializeParam(
          experience,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'description': debugSerializeParam(
          description,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'avatar': debugSerializeParam(
          avatar,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'trainer': debugSerializeParam(
          _trainer,
          ParamType.DataStruct,
          name: 'TrainerListView',
          nullable: false,
        ),
      };

  @override
  String toString() => 'CatalogViewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CatalogViewStruct &&
        id == other.id &&
        name == other.name &&
        rating == other.rating &&
        experience == other.experience &&
        description == other.description &&
        avatar == other.avatar &&
        trainer == other.trainer;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, name, rating, experience, description, avatar, trainer]);
}

CatalogViewStruct createCatalogViewStruct({
  String? id,
  String? name,
  double? rating,
  int? experience,
  String? description,
  String? avatar,
  TrainerListViewStruct? trainer,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CatalogViewStruct(
      id: id,
      name: name,
      rating: rating,
      experience: experience,
      description: description,
      avatar: avatar,
      trainer: trainer ?? (clearUnsetFields ? TrainerListViewStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CatalogViewStruct? updateCatalogViewStruct(
  CatalogViewStruct? catalogView, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    catalogView
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCatalogViewStructData(
  Map<String, dynamic> firestoreData,
  CatalogViewStruct? catalogView,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (catalogView == null) {
    return;
  }
  if (catalogView.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && catalogView.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final catalogViewData =
      getCatalogViewFirestoreData(catalogView, forFieldValue);
  final nestedData =
      catalogViewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = catalogView.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCatalogViewFirestoreData(
  CatalogViewStruct? catalogView, [
  bool forFieldValue = false,
]) {
  if (catalogView == null) {
    return {};
  }
  final firestoreData = mapToFirestore(catalogView.toMap());

  // Handle nested data for "trainer" field.
  addTrainerListViewStructData(
    firestoreData,
    catalogView.hasTrainer() ? catalogView.trainer : null,
    'trainer',
    forFieldValue,
  );

  // Add any Firestore field values
  catalogView.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCatalogViewListFirestoreData(
  List<CatalogViewStruct>? catalogViews,
) =>
    catalogViews?.map((e) => getCatalogViewFirestoreData(e, true)).toList() ??
    [];
