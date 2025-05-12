import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  List<String>? _name;
  List<String> get name => _name ?? const [];
  bool hasName() => _name != null;

  // "price" field.
  List<int>? _price;
  List<int> get price => _price ?? const [];
  bool hasPrice() => _price != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = getDataList(snapshotData['name']);
    _price = getDataList(snapshotData['price']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('services')
          : FirebaseFirestore.instance.collectionGroup('services');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('services').doc(id);

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
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
        'name': debugSerializeParam(
          name,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'String',
          nullable: false,
        ),
        'price': debugSerializeParam(
          price,
          ParamType.int,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=database',
          name: 'int',
          nullable: false,
        )
      };
}

Map<String, dynamic> createServicesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.name, e2?.name) &&
        listEquality.equals(e1?.price, e2?.price);
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([e?.name, e?.price]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
