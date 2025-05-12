// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfiledataStruct extends FFFirebaseStruct {
  ProfiledataStruct({
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
    int? experience,
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
        _experience = experience,
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

  // "experience" field.
  int? _experience;
  int get experience => _experience ?? 0;
  set experience(int? val) {
    _experience = val;
    debugLog();
  }

  void incrementExperience(int amount) => experience = experience + amount;

  bool hasExperience() => _experience != null;

  static ProfiledataStruct fromMap(Map<String, dynamic> data) =>
      ProfiledataStruct(
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
        experience: castToType<int>(data['experience']),
      );

  static ProfiledataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfiledataStruct.fromMap(data.cast<String, dynamic>())
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
        'experience': _experience,
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
        'experience': serializeParam(
          _experience,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProfiledataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfiledataStruct(
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
        experience: deserializeParam(
          data['experience'],
          ParamType.int,
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
        'experience': debugSerializeParam(
          experience,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
      };

  @override
  String toString() => 'ProfiledataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfiledataStruct &&
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
        experience == other.experience;
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
        experience
      ]);
}

ProfiledataStruct createProfiledataStruct({
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
  int? experience,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProfiledataStruct(
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
      experience: experience,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProfiledataStruct? updateProfiledataStruct(
  ProfiledataStruct? profiledata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    profiledata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProfiledataStructData(
  Map<String, dynamic> firestoreData,
  ProfiledataStruct? profiledata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (profiledata == null) {
    return;
  }
  if (profiledata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && profiledata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final profiledataData =
      getProfiledataFirestoreData(profiledata, forFieldValue);
  final nestedData =
      profiledataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = profiledata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProfiledataFirestoreData(
  ProfiledataStruct? profiledata, [
  bool forFieldValue = false,
]) {
  if (profiledata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(profiledata.toMap());

  // Add any Firestore field values
  profiledata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProfiledataListFirestoreData(
  List<ProfiledataStruct>? profiledatas,
) =>
    profiledatas?.map((e) => getProfiledataFirestoreData(e, true)).toList() ??
    [];
