// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventDataStruct extends FFFirebaseStruct {
  EventDataStruct({
    String? id,
    String? created,
    String? name,
    String? description,
    String? place,
    String? date,
    int? players,
    String? format,
    String? rating,
    String? theme,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _created = created,
        _name = name,
        _description = description,
        _place = place,
        _date = date,
        _players = players,
        _format = format,
        _rating = rating,
        _theme = theme,
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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) {
    _name = val;
    debugLog();
  }

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) {
    _description = val;
    debugLog();
  }

  bool hasDescription() => _description != null;

  // "place" field.
  String? _place;
  String get place => _place ?? '';
  set place(String? val) {
    _place = val;
    debugLog();
  }

  bool hasPlace() => _place != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) {
    _date = val;
    debugLog();
  }

  bool hasDate() => _date != null;

  // "players" field.
  int? _players;
  int get players => _players ?? 0;
  set players(int? val) {
    _players = val;
    debugLog();
  }

  void incrementPlayers(int amount) => players = players + amount;

  bool hasPlayers() => _players != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  set format(String? val) {
    _format = val;
    debugLog();
  }

  bool hasFormat() => _format != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  set rating(String? val) {
    _rating = val;
    debugLog();
  }

  bool hasRating() => _rating != null;

  // "theme" field.
  String? _theme;
  String get theme => _theme ?? '';
  set theme(String? val) {
    _theme = val;
    debugLog();
  }

  bool hasTheme() => _theme != null;

  static EventDataStruct fromMap(Map<String, dynamic> data) => EventDataStruct(
        id: data['id'] as String?,
        created: data['created'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        place: data['place'] as String?,
        date: data['date'] as String?,
        players: castToType<int>(data['players']),
        format: data['format'] as String?,
        rating: data['rating'] as String?,
        theme: data['theme'] as String?,
      );

  static EventDataStruct? maybeFromMap(dynamic data) => data is Map
      ? EventDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'name': _name,
        'description': _description,
        'place': _place,
        'date': _date,
        'players': _players,
        'format': _format,
        'rating': _rating,
        'theme': _theme,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'place': serializeParam(
          _place,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'players': serializeParam(
          _players,
          ParamType.int,
        ),
        'format': serializeParam(
          _format,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.String,
        ),
        'theme': serializeParam(
          _theme,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventDataStruct(
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        place: deserializeParam(
          data['place'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        players: deserializeParam(
          data['players'],
          ParamType.int,
          false,
        ),
        format: deserializeParam(
          data['format'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.String,
          false,
        ),
        theme: deserializeParam(
          data['theme'],
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
        'created': debugSerializeParam(
          created,
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
        'description': debugSerializeParam(
          description,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'place': debugSerializeParam(
          place,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'date': debugSerializeParam(
          date,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'players': debugSerializeParam(
          players,
          ParamType.int,
          name: 'int',
          nullable: false,
        ),
        'format': debugSerializeParam(
          format,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'rating': debugSerializeParam(
          rating,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
        'theme': debugSerializeParam(
          theme,
          ParamType.String,
          name: 'String',
          nullable: false,
        ),
      };

  @override
  String toString() => 'EventDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventDataStruct &&
        id == other.id &&
        created == other.created &&
        name == other.name &&
        description == other.description &&
        place == other.place &&
        date == other.date &&
        players == other.players &&
        format == other.format &&
        rating == other.rating &&
        theme == other.theme;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        name,
        description,
        place,
        date,
        players,
        format,
        rating,
        theme
      ]);
}

EventDataStruct createEventDataStruct({
  String? id,
  String? created,
  String? name,
  String? description,
  String? place,
  String? date,
  int? players,
  String? format,
  String? rating,
  String? theme,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventDataStruct(
      id: id,
      created: created,
      name: name,
      description: description,
      place: place,
      date: date,
      players: players,
      format: format,
      rating: rating,
      theme: theme,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventDataStruct? updateEventDataStruct(
  EventDataStruct? eventData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventDataStructData(
  Map<String, dynamic> firestoreData,
  EventDataStruct? eventData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventData == null) {
    return;
  }
  if (eventData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventDataData = getEventDataFirestoreData(eventData, forFieldValue);
  final nestedData = eventDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventDataFirestoreData(
  EventDataStruct? eventData, [
  bool forFieldValue = false,
]) {
  if (eventData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventData.toMap());

  // Add any Firestore field values
  eventData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventDataListFirestoreData(
  List<EventDataStruct>? eventDatas,
) =>
    eventDatas?.map((e) => getEventDataFirestoreData(e, true)).toList() ?? [];
