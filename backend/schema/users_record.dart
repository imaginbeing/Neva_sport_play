import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gender" field.
  int? _gender;
  int get gender => _gender ?? 0;
  bool hasGender() => _gender != null;

  // "birthDate" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  bool hasBirthDate() => _birthDate != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "skill" field.
  int? _skill;
  int get skill => _skill ?? 0;
  bool hasSkill() => _skill != null;

  // "experience" field.
  int? _experience;
  int get experience => _experience ?? 0;
  bool hasExperience() => _experience != null;

  // "clubid" field.
  String? _clubid;
  String get clubid => _clubid ?? '';
  bool hasClubid() => _clubid != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = castToType<int>(snapshotData['gender']);
    _birthDate = snapshotData['birthDate'] as String?;
    _city = snapshotData['city'] as String?;
    _skill = castToType<int>(snapshotData['skill']);
    _experience = castToType<int>(snapshotData['experience']);
    _clubid = snapshotData['clubid'] as String?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;

  @override
  Map<String, DebugDataField> toDebugSerializableMap() => {
        'reference': debugSerializeParam(
          reference,
          ParamType.DocumentReference,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: '',
          nullable: false,
        ),
        'email': debugSerializeParam(
          email,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'display_name': debugSerializeParam(
          displayName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'photo_url': debugSerializeParam(
          photoUrl,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'uid': debugSerializeParam(
          uid,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'created_time': debugSerializeParam(
          createdTime,
          ParamType.DateTime,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'DateTime',
          nullable: true,
        ),
        'phone_number': debugSerializeParam(
          phoneNumber,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'gender': debugSerializeParam(
          gender,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        ),
        'birthDate': debugSerializeParam(
          birthDate,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'city': debugSerializeParam(
          city,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'skill': debugSerializeParam(
          skill,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        ),
        'experience': debugSerializeParam(
          experience,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        ),
        'clubid': debugSerializeParam(
          clubid,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'notes': debugSerializeParam(
          notes,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        )
      };
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  int? gender,
  String? birthDate,
  String? city,
  int? skill,
  int? experience,
  String? clubid,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gender': gender,
      'birthDate': birthDate,
      'city': city,
      'skill': skill,
      'experience': experience,
      'clubid': clubid,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        e1?.birthDate == e2?.birthDate &&
        e1?.city == e2?.city &&
        e1?.skill == e2?.skill &&
        e1?.experience == e2?.experience &&
        e1?.clubid == e2?.clubid &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gender,
        e?.birthDate,
        e?.city,
        e?.skill,
        e?.experience,
        e?.clubid,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
