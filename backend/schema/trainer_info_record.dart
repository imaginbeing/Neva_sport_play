import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainerInfoRecord extends FirestoreRecord {
  TrainerInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tennisAge" field.
  int? _tennisAge;
  int get tennisAge => _tennisAge ?? 0;
  bool hasTennisAge() => _tennisAge != null;

  // "paddleAge" field.
  int? _paddleAge;
  int get paddleAge => _paddleAge ?? 0;
  bool hasPaddleAge() => _paddleAge != null;

  // "education" field.
  String? _education;
  String get education => _education ?? '';
  bool hasEducation() => _education != null;

  // "certificate" field.
  String? _certificate;
  String get certificate => _certificate ?? '';
  bool hasCertificate() => _certificate != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "schedule" field.
  ScheduleStruct? _schedule;
  ScheduleStruct get schedule => _schedule ?? ScheduleStruct();
  bool hasSchedule() => _schedule != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _tennisAge = castToType<int>(snapshotData['tennisAge']);
    _paddleAge = castToType<int>(snapshotData['paddleAge']);
    _education = snapshotData['education'] as String?;
    _certificate = snapshotData['certificate'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _schedule = ScheduleStruct.maybeFromMap(snapshotData['schedule']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('trainerInfo')
          : FirebaseFirestore.instance.collectionGroup('trainerInfo');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('trainerInfo').doc(id);

  static Stream<TrainerInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainerInfoRecord.fromSnapshot(s));

  static Future<TrainerInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainerInfoRecord.fromSnapshot(s));

  static TrainerInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrainerInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainerInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainerInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainerInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrainerInfoRecord &&
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
        'tennisAge': debugSerializeParam(
          tennisAge,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        ),
        'paddleAge': debugSerializeParam(
          paddleAge,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        ),
        'education': debugSerializeParam(
          education,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'certificate': debugSerializeParam(
          certificate,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'price': debugSerializeParam(
          price,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        ),
        'schedule': debugSerializeParam(
          schedule,
          ParamType.DataStruct,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'schedule',
          nullable: false,
        )
      };
}

Map<String, dynamic> createTrainerInfoRecordData({
  int? tennisAge,
  int? paddleAge,
  String? education,
  String? certificate,
  int? price,
  ScheduleStruct? schedule,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tennisAge': tennisAge,
      'paddleAge': paddleAge,
      'education': education,
      'certificate': certificate,
      'price': price,
      'schedule': ScheduleStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "schedule" field.
  addScheduleStructData(firestoreData, schedule, 'schedule');

  return firestoreData;
}

class TrainerInfoRecordDocumentEquality implements Equality<TrainerInfoRecord> {
  const TrainerInfoRecordDocumentEquality();

  @override
  bool equals(TrainerInfoRecord? e1, TrainerInfoRecord? e2) {
    return e1?.tennisAge == e2?.tennisAge &&
        e1?.paddleAge == e2?.paddleAge &&
        e1?.education == e2?.education &&
        e1?.certificate == e2?.certificate &&
        e1?.price == e2?.price &&
        e1?.schedule == e2?.schedule;
  }

  @override
  int hash(TrainerInfoRecord? e) => const ListEquality().hash([
        e?.tennisAge,
        e?.paddleAge,
        e?.education,
        e?.certificate,
        e?.price,
        e?.schedule
      ]);

  @override
  bool isValidKey(Object? o) => o is TrainerInfoRecord;
}
