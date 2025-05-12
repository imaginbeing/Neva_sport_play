// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainerProfileSchemaStruct extends FFFirebaseStruct {
  TrainerProfileSchemaStruct({
    String? id,
    String? created,
    int? type,
    String? description,
    String? email,
    String? phoneNumber,
    String? name,
    int? gender,
    String? birthDate,
    String? avatar,
    int? skill,
    int? expirience,
    TrainerInfoStruct? trainerInfo,
    TrainerListViewStruct? services,
    double? rating,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _created = created,
        _type = type,
        _description = description,
        _email = email,
        _phoneNumber = phoneNumber,
        _name = name,
        _gender = gender,
        _birthDate = birthDate,
        _avatar = avatar,
        _skill = skill,
        _expirience = expirience,
        _trainerInfo = trainerInfo,
        _services = services,
        _rating = rating,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) {
    _id = val;
    debugLog();
  }

  bool hasId() => _id != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) {
    _created = val;
    debugLog();
  }

  bool hasCreated() => _created != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) {
    _type = val;
    debugLog();
  }

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) {
    _description = val;
    debugLog();
  }

  bool hasDescription() => _description != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) {
    _email = val;
    debugLog();
  }

  bool hasEmail() => _email != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) {
    _phoneNumber = val;
    debugLog();
  }

  bool hasPhoneNumber() => _phoneNumber != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "gender" field.
  int? _gender;
  int get gender => _gender ?? 0;
  set gender(int? val) {
    _gender = val;
    debugLog();
  }

  void incrementGender(int amount) => gender = gender + amount;

  bool hasGender() => _gender != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) {
    _birthDate = val;
    debugLog();
  }

  bool hasBirthDate() => _birthDate != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) {
    _avatar = val;
    debugLog();
  }

  bool hasAvatar() => _avatar != null;

  // "skill" field.
  int? _skill;
  int get skill => _skill ?? 0;
  set skill(int? val) {
    _skill = val;
    debugLog();
  }

  void incrementSkill(int amount) => skill = skill + amount;

  bool hasSkill() => _skill != null;

  // "expirience" field.
  int? _expirience;
  int get expirience => _expirience ?? 0;
  set expirience(int? val) {
    _expirience = val;
    debugLog();
  }

  void incrementExpirience(int amount) => expirience = expirience + amount;

  bool hasExpirience() => _expirience != null;

  // "trainerInfo" field.
  TrainerInfoStruct? _trainerInfo;
  TrainerInfoStruct get trainerInfo =>
      (_trainerInfo ?? TrainerInfoStruct())..logger = logger;
  set trainerInfo(TrainerInfoStruct? val) {
    _trainerInfo = val;
    debugLog();
  }

  void updateTrainerInfo(Function(TrainerInfoStruct) updateFn) {
    updateFn(_trainerInfo ??= TrainerInfoStruct());
    debugLog();
  }

  bool hasTrainerInfo() => _trainerInfo != null;

  // "services" field.
  TrainerListViewStruct? _services;
  TrainerListViewStruct get services =>
      (_services ?? TrainerListViewStruct())..logger = logger;
  set services(TrainerListViewStruct? val) {
    _services = val;
    debugLog();
  }

  void updateServices(Function(TrainerListViewStruct) updateFn) {
    updateFn(_services ??= TrainerListViewStruct());
    debugLog();
  }

  bool hasServices() => _services != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) {
    _rating = val;
    debugLog();
  }

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  static TrainerProfileSchemaStruct fromMap(Map<String, dynamic> data) =>
      TrainerProfileSchemaStruct(
        id: data['id'] as String?,
        created: data['created'] as String?,
        type: castToType<int>(data['type']),
        description: data['description'] as String?,
        email: data['email'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        name: data['name'] as String?,
        gender: castToType<int>(data['gender']),
        birthDate: data['birthDate'] as String?,
        avatar: data['avatar'] as String?,
        skill: castToType<int>(data['skill']),
        expirience: castToType<int>(data['expirience']),
        trainerInfo: TrainerInfoStruct.maybeFromMap(data['trainerInfo']),
        services: TrainerListViewStruct.maybeFromMap(data['services']),
        rating: castToType<double>(data['rating']),
      );

  static TrainerProfileSchemaStruct? maybeFromMap(dynamic data) => data is Map
      ? TrainerProfileSchemaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'type': _type,
        'description': _description,
        'email': _email,
        'phoneNumber': _phoneNumber,
        'name': _name,
        'gender': _gender,
        'birthDate': _birthDate,
        'avatar': _avatar,
        'skill': _skill,
        'expirience': _expirience,
        'trainerInfo': _trainerInfo?.toMap(),
        'services': _services?.toMap(),
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.int,
        ),
        'birthDate': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'skill': serializeParam(
          _skill,
          ParamType.int,
        ),
        'expirience': serializeParam(
          _expirience,
          ParamType.int,
        ),
        'trainerInfo': serializeParam(
          _trainerInfo,
          ParamType.DataStruct,
        ),
        'services': serializeParam(
          _services,
          ParamType.DataStruct,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
      }.withoutNulls;

  static TrainerProfileSchemaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrainerProfileSchemaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.int,
          false,
        ),
        birthDate: deserializeParam(
          data['birthDate'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        skill: deserializeParam(
          data['skill'],
          ParamType.int,
          false,
        ),
        expirience: deserializeParam(
          data['expirience'],
          ParamType.int,
          false,
        ),
        trainerInfo: deserializeStructParam(
          data['trainerInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: TrainerInfoStruct.fromSerializableMap,
        ),
        services: deserializeStructParam(
          data['services'],
          ParamType.DataStruct,
          false,
          structBuilder: TrainerListViewStruct.fromSerializableMap,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
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
        'created': debugSerializeParam(
          created,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'type': debugSerializeParam(
          type,
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
        'email': debugSerializeParam(
          email,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'phoneNumber': debugSerializeParam(
          phoneNumber,
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
        'gender': debugSerializeParam(
          gender,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'birthDate': debugSerializeParam(
          birthDate,
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
        'skill': debugSerializeParam(
          skill,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'expirience': debugSerializeParam(
          expirience,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'trainerInfo': debugSerializeParam(
          _trainerInfo,
          ParamType.DataStruct,
          name: 'trainerInfo',
          nullable: false,
        ),
        'services': debugSerializeParam(
          _services,
          ParamType.DataStruct,
          name: 'TrainerListView',
          nullable: false,
        ),
        'rating': debugSerializeParam(
          rating,
          ParamType.double,
          name: 'double',
          nullable: false,
        ),
      };

  @override
  String toString() => 'TrainerProfileSchemaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrainerProfileSchemaStruct &&
        id == other.id &&
        created == other.created &&
        type == other.type &&
        description == other.description &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        name == other.name &&
        gender == other.gender &&
        birthDate == other.birthDate &&
        avatar == other.avatar &&
        skill == other.skill &&
        expirience == other.expirience &&
        trainerInfo == other.trainerInfo &&
        services == other.services &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        type,
        description,
        email,
        phoneNumber,
        name,
        gender,
        birthDate,
        avatar,
        skill,
        expirience,
        trainerInfo,
        services,
        rating
      ]);
}

TrainerProfileSchemaStruct createTrainerProfileSchemaStruct({
  String? id,
  String? created,
  int? type,
  String? description,
  String? email,
  String? phoneNumber,
  String? name,
  int? gender,
  String? birthDate,
  String? avatar,
  int? skill,
  int? expirience,
  TrainerInfoStruct? trainerInfo,
  TrainerListViewStruct? services,
  double? rating,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrainerProfileSchemaStruct(
      id: id,
      created: created,
      type: type,
      description: description,
      email: email,
      phoneNumber: phoneNumber,
      name: name,
      gender: gender,
      birthDate: birthDate,
      avatar: avatar,
      skill: skill,
      expirience: expirience,
      trainerInfo:
          trainerInfo ?? (clearUnsetFields ? TrainerInfoStruct() : null),
      services: services ?? (clearUnsetFields ? TrainerListViewStruct() : null),
      rating: rating,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrainerProfileSchemaStruct? updateTrainerProfileSchemaStruct(
  TrainerProfileSchemaStruct? trainerProfileSchema, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    trainerProfileSchema
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrainerProfileSchemaStructData(
  Map<String, dynamic> firestoreData,
  TrainerProfileSchemaStruct? trainerProfileSchema,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (trainerProfileSchema == null) {
    return;
  }
  if (trainerProfileSchema.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && trainerProfileSchema.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trainerProfileSchemaData =
      getTrainerProfileSchemaFirestoreData(trainerProfileSchema, forFieldValue);
  final nestedData =
      trainerProfileSchemaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      trainerProfileSchema.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrainerProfileSchemaFirestoreData(
  TrainerProfileSchemaStruct? trainerProfileSchema, [
  bool forFieldValue = false,
]) {
  if (trainerProfileSchema == null) {
    return {};
  }
  final firestoreData = mapToFirestore(trainerProfileSchema.toMap());

  // Handle nested data for "trainerInfo" field.
  addTrainerInfoStructData(
    firestoreData,
    trainerProfileSchema.hasTrainerInfo()
        ? trainerProfileSchema.trainerInfo
        : null,
    'trainerInfo',
    forFieldValue,
  );

  // Handle nested data for "services" field.
  addTrainerListViewStructData(
    firestoreData,
    trainerProfileSchema.hasServices() ? trainerProfileSchema.services : null,
    'services',
    forFieldValue,
  );

  // Add any Firestore field values
  trainerProfileSchema.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrainerProfileSchemaListFirestoreData(
  List<TrainerProfileSchemaStruct>? trainerProfileSchemas,
) =>
    trainerProfileSchemas
        ?.map((e) => getTrainerProfileSchemaFirestoreData(e, true))
        .toList() ??
    [];
