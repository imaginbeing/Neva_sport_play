// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GallerylistStruct extends FFFirebaseStruct {
  GallerylistStruct({
    String? id,
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) {
    _id = val;
    debugLog();
  }

  bool hasId() => _id != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) {
    _imageUrl = val;
    debugLog();
  }

  bool hasImageUrl() => _imageUrl != null;

  static GallerylistStruct fromMap(Map<String, dynamic> data) =>
      GallerylistStruct(
        id: data['id'] as String?,
        imageUrl: data['imageUrl'] as String?,
      );

  static GallerylistStruct? maybeFromMap(dynamic data) => data is Map
      ? GallerylistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'imageUrl': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static GallerylistStruct fromSerializableMap(Map<String, dynamic> data) =>
      GallerylistStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
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
        'imageUrl': debugSerializeParam(
          imageUrl,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'GallerylistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GallerylistStruct &&
        id == other.id &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([id, imageUrl]);
}

GallerylistStruct createGallerylistStruct({
  String? id,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GallerylistStruct(
      id: id,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GallerylistStruct? updateGallerylistStruct(
  GallerylistStruct? gallerylist, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gallerylist
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGallerylistStructData(
  Map<String, dynamic> firestoreData,
  GallerylistStruct? gallerylist,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gallerylist == null) {
    return;
  }
  if (gallerylist.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gallerylist.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gallerylistData =
      getGallerylistFirestoreData(gallerylist, forFieldValue);
  final nestedData =
      gallerylistData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gallerylist.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGallerylistFirestoreData(
  GallerylistStruct? gallerylist, [
  bool forFieldValue = false,
]) {
  if (gallerylist == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gallerylist.toMap());

  // Add any Firestore field values
  gallerylist.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGallerylistListFirestoreData(
  List<GallerylistStruct>? gallerylists,
) =>
    gallerylists?.map((e) => getGallerylistFirestoreData(e, true)).toList() ??
    [];
