import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationRecord extends FirestoreRecord {
  LocationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ClubID" field.
  String? _clubID;
  String get clubID => _clubID ?? '';
  bool hasClubID() => _clubID != null;

  // "ClubName" field.
  String? _clubName;
  String get clubName => _clubName ?? '';
  bool hasClubName() => _clubName != null;

  // "Location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _clubID = snapshotData['ClubID'] as String?;
    _clubName = snapshotData['ClubName'] as String?;
    _location = snapshotData['Location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Location');

  static Stream<LocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationRecord.fromSnapshot(s));

  static Future<LocationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationRecord.fromSnapshot(s));

  static LocationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationRecord &&
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
        'ClubID': debugSerializeParam(
          clubID,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'ClubName': debugSerializeParam(
          clubName,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'Location': debugSerializeParam(
          location,
          ParamType.LatLng,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'LatLng',
          nullable: true,
        )
      };
}

Map<String, dynamic> createLocationRecordData({
  String? clubID,
  String? clubName,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ClubID': clubID,
      'ClubName': clubName,
      'Location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationRecordDocumentEquality implements Equality<LocationRecord> {
  const LocationRecordDocumentEquality();

  @override
  bool equals(LocationRecord? e1, LocationRecord? e2) {
    return e1?.clubID == e2?.clubID &&
        e1?.clubName == e2?.clubName &&
        e1?.location == e2?.location;
  }

  @override
  int hash(LocationRecord? e) =>
      const ListEquality().hash([e?.clubID, e?.clubName, e?.location]);

  @override
  bool isValidKey(Object? o) => o is LocationRecord;
}
