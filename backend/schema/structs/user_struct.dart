// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? eMail,
    String? password,
    String? token,
    int? phoneNumber,
    String? name,
    int? gender,
    String? birthDate,
    String? city,
    int? skill,
    int? expirience,
    int? tennisAge,
    int? paddleAge,
    String? education,
    String? certificate,
    int? price,
    int? sessionDuration,
    String? avatar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eMail = eMail,
        _password = password,
        _token = token,
        _phoneNumber = phoneNumber,
        _name = name,
        _gender = gender,
        _birthDate = birthDate,
        _city = city,
        _skill = skill,
        _expirience = expirience,
        _tennisAge = tennisAge,
        _paddleAge = paddleAge,
        _education = education,
        _certificate = certificate,
        _price = price,
        _sessionDuration = sessionDuration,
        _avatar = avatar,
        super(firestoreUtilData);

  // "E-mail" field.
  String? _eMail;
  String get eMail => _eMail ?? '';
  set eMail(String? val) {
    _eMail = val;
    debugLog();
  }

  bool hasEMail() => _eMail != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) {
    _password = val;
    debugLog();
  }

  bool hasPassword() => _password != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) {
    _token = val;
    debugLog();
  }

  bool hasToken() => _token != null;

  // "phoneNumber" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  set phoneNumber(int? val) {
    _phoneNumber = val;
    debugLog();
  }

  void incrementPhoneNumber(int amount) => phoneNumber = phoneNumber + amount;

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

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) {
    _city = val;
    debugLog();
  }

  bool hasCity() => _city != null;

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

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) {
    _avatar = val;
    debugLog();
  }

  bool hasAvatar() => _avatar != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        eMail: data['E-mail'] as String?,
        password: data['password'] as String?,
        token: data['token'] as String?,
        phoneNumber: castToType<int>(data['phoneNumber']),
        name: data['name'] as String?,
        gender: castToType<int>(data['gender']),
        birthDate: data['birthDate'] as String?,
        city: data['city'] as String?,
        skill: castToType<int>(data['skill']),
        expirience: castToType<int>(data['expirience']),
        tennisAge: castToType<int>(data['tennisAge']),
        paddleAge: castToType<int>(data['paddleAge']),
        education: data['education'] as String?,
        certificate: data['certificate'] as String?,
        price: castToType<int>(data['price']),
        sessionDuration: castToType<int>(data['sessionDuration']),
        avatar: data['avatar'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'E-mail': _eMail,
        'password': _password,
        'token': _token,
        'phoneNumber': _phoneNumber,
        'name': _name,
        'gender': _gender,
        'birthDate': _birthDate,
        'city': _city,
        'skill': _skill,
        'expirience': _expirience,
        'tennisAge': _tennisAge,
        'paddleAge': _paddleAge,
        'education': _education,
        'certificate': _certificate,
        'price': _price,
        'sessionDuration': _sessionDuration,
        'avatar': _avatar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'E-mail': serializeParam(
          _eMail,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.int,
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
        'city': serializeParam(
          _city,
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
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        eMail: deserializeParam(
          data['E-mail'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.int,
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
        city: deserializeParam(
          data['city'],
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
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
      );
  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'E-mail': debugSerializeParam(
          eMail,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'password': debugSerializeParam(
          password,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'token': debugSerializeParam(
          token,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'phoneNumber': debugSerializeParam(
          phoneNumber,
          ParamType.int,
          name: 'int',
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
        'city': debugSerializeParam(
          city,
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
        'avatar': debugSerializeParam(
          avatar,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        eMail == other.eMail &&
        password == other.password &&
        token == other.token &&
        phoneNumber == other.phoneNumber &&
        name == other.name &&
        gender == other.gender &&
        birthDate == other.birthDate &&
        city == other.city &&
        skill == other.skill &&
        expirience == other.expirience &&
        tennisAge == other.tennisAge &&
        paddleAge == other.paddleAge &&
        education == other.education &&
        certificate == other.certificate &&
        price == other.price &&
        sessionDuration == other.sessionDuration &&
        avatar == other.avatar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        eMail,
        password,
        token,
        phoneNumber,
        name,
        gender,
        birthDate,
        city,
        skill,
        expirience,
        tennisAge,
        paddleAge,
        education,
        certificate,
        price,
        sessionDuration,
        avatar
      ]);
}

UserStruct createUserStruct({
  String? eMail,
  String? password,
  String? token,
  int? phoneNumber,
  String? name,
  int? gender,
  String? birthDate,
  String? city,
  int? skill,
  int? expirience,
  int? tennisAge,
  int? paddleAge,
  String? education,
  String? certificate,
  int? price,
  int? sessionDuration,
  String? avatar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      eMail: eMail,
      password: password,
      token: token,
      phoneNumber: phoneNumber,
      name: name,
      gender: gender,
      birthDate: birthDate,
      city: city,
      skill: skill,
      expirience: expirience,
      tennisAge: tennisAge,
      paddleAge: paddleAge,
      education: education,
      certificate: certificate,
      price: price,
      sessionDuration: sessionDuration,
      avatar: avatar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
