import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiZWM3Mzg1NWYtZDZkZC00YWJmLWE1YTMtNDMxOGIyZGQwMTU5IiwiZXhwIjoxNzM3NDU5NTUzLCJpc3MiOiJQc3ljaG8uUG9pbnRzVGVzdCIsImF1ZCI6IlBzeWNoby5Qb2ludHNUZXN0In0.cfx2wqOQffZ3fkf1qUspyPkBwWnx4r_w0vEYDl9ZNCQ';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
    debugLogAppState(this);
  }

  String _currentChat = '4d58ff0d-0543-400f-b5d9-c9a29599e67d';
  String get currentChat => _currentChat;
  set currentChat(String value) {
    _currentChat = value;

    debugLogAppState(this);
  }

  late LoggableList<String> _Messages = LoggableList([]);
  List<String> get Messages =>
      _Messages?..logger = () => debugLogAppState(this);
  set Messages(List<String> value) {
    if (value != null) {
      _Messages = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToMessages(String value) {
    Messages.add(value);
  }

  void removeFromMessages(String value) {
    Messages.remove(value);
  }

  void removeAtIndexFromMessages(int index) {
    Messages.removeAt(index);
  }

  void updateMessagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Messages[index] = updateFn(_Messages[index]);
  }

  void insertAtIndexInMessages(int index, String value) {
    Messages.insert(index, value);
  }

  ChatDetailsStruct _ChatDetails = ChatDetailsStruct.fromSerializableMap(
      jsonDecode('{\"messages\":\"[]\"}'));
  ChatDetailsStruct get ChatDetails =>
      _ChatDetails?..logger = () => debugLogAppState(this);
  set ChatDetails(ChatDetailsStruct value) {
    _ChatDetails = value;

    debugLogAppState(this);
  }

  void updateChatDetailsStruct(Function(ChatDetailsStruct) updateFn) {
    updateFn(_ChatDetails);

    debugLogAppState(this);
  }

  String _Idmatch = '';
  String get Idmatch => _Idmatch;
  set Idmatch(String value) {
    _Idmatch = value;

    debugLogAppState(this);
  }

  String _AvatarPhoto =
      'https://s3.timeweb.cloud/260dc2ca-neva-sport-play/nouser.svg';
  String get AvatarPhoto => _AvatarPhoto;
  set AvatarPhoto(String value) {
    _AvatarPhoto = value;

    debugLogAppState(this);
  }

  String _id = '';
  String get id => _id;
  set id(String value) {
    _id = value;

    debugLogAppState(this);
  }

  String _idViewProfile = '';
  String get idViewProfile => _idViewProfile;
  set idViewProfile(String value) {
    _idViewProfile = value;

    debugLogAppState(this);
  }

  int _visibilityPageView = 0;
  int get visibilityPageView => _visibilityPageView;
  set visibilityPageView(int value) {
    _visibilityPageView = value;

    debugLogAppState(this);
  }

  String _visibleavatar = '';
  String get visibleavatar => _visibleavatar;
  set visibleavatar(String value) {
    _visibleavatar = value;

    debugLogAppState(this);
  }

  String _indexpageviewfordelete = '';
  String get indexpageviewfordelete => _indexpageviewfordelete;
  set indexpageviewfordelete(String value) {
    _indexpageviewfordelete = value;

    debugLogAppState(this);
  }

  int _indexviewphoto = 0;
  int get indexviewphoto => _indexviewphoto;
  set indexviewphoto(int value) {
    _indexviewphoto = value;

    debugLogAppState(this);
  }

  int _Statuscode1 = 1;
  int get Statuscode1 => _Statuscode1;
  set Statuscode1(int value) {
    _Statuscode1 = value;

    debugLogAppState(this);
  }

  late LoggableList<String> _galleryPageview = LoggableList([]);
  List<String> get galleryPageview =>
      _galleryPageview?..logger = () => debugLogAppState(this);
  set galleryPageview(List<String> value) {
    if (value != null) {
      _galleryPageview = LoggableList(value);
    }

    debugLogAppState(this);
  }

  void addToGalleryPageview(String value) {
    galleryPageview.add(value);
  }

  void removeFromGalleryPageview(String value) {
    galleryPageview.remove(value);
  }

  void removeAtIndexFromGalleryPageview(int index) {
    galleryPageview.removeAt(index);
  }

  void updateGalleryPageviewAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    galleryPageview[index] = updateFn(_galleryPageview[index]);
  }

  void insertAtIndexInGalleryPageview(int index, String value) {
    galleryPageview.insert(index, value);
  }

  String _Profilename = '';
  String get Profilename => _Profilename;
  set Profilename(String value) {
    _Profilename = value;

    debugLogAppState(this);
  }

  ProfiledataStruct _profiledata = ProfiledataStruct.fromSerializableMap(jsonDecode(
      '{\"avatar\":\"https://s3.timeweb.cloud/260dc2ca-neva-sport-play/nouser.svg\"}'));
  ProfiledataStruct get profiledata =>
      _profiledata?..logger = () => debugLogAppState(this);
  set profiledata(ProfiledataStruct value) {
    _profiledata = value;

    debugLogAppState(this);
  }

  void updateProfiledataStruct(Function(ProfiledataStruct) updateFn) {
    updateFn(_profiledata);

    debugLogAppState(this);
  }

  String _tornamentid = '';
  String get tornamentid => _tornamentid;
  set tornamentid(String value) {
    _tornamentid = value;

    debugLogAppState(this);
  }

  LatLng? _initialLocation = LatLng(55.755826, 37.6173);
  LatLng? get initialLocation => _initialLocation;
  set initialLocation(LatLng? value) {
    _initialLocation = value;

    debugLogAppState(this);
  }

  String _TypeLogUser = '';
  String get TypeLogUser => _TypeLogUser;
  set TypeLogUser(String value) {
    _TypeLogUser = value;

    debugLogAppState(this);
  }

  Map<String, DebugDataField> toDebugSerializableMap() => {
        'token': debugSerializeParam(
          token,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChcKEQoFdG9rZW4SCHFlNHlhdTlycgIIA1oFdG9rZW4=',
          name: 'String',
          nullable: false,
        ),
        'currentChat': debugSerializeParam(
          currentChat,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLY3VycmVudENoYXQSCHZjZ2E0OW94cgIIA1oLY3VycmVudENoYXQ=',
          name: 'String',
          nullable: false,
        ),
        'Messages': debugSerializeParam(
          Messages,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChwKFAoITWVzc2FnZXMSCG5ubWk4cWtocgQSAggDWghNZXNzYWdlcw==',
          name: 'String',
          nullable: false,
        ),
        'ChatDetails': debugSerializeParam(
          ChatDetails,
          ParamType.DataStruct,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CjUKFwoLQ2hhdERldGFpbHMSCHZmYjl5b2h1choIFCoWEhQKC0NoYXREZXRhaWxzEgU5aTA2c1oLQ2hhdERldGFpbHM=',
          name: 'ChatDetails',
          nullable: false,
        ),
        'Idmatch': debugSerializeParam(
          Idmatch,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=ChkKEwoHSWRtYXRjaBIINnBpcWJ1eDZyAggDWgdJZG1hdGNo',
          name: 'String',
          nullable: false,
        ),
        'AvatarPhoto': debugSerializeParam(
          AvatarPhoto,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLQXZhdGFyUGhvdG8SCDNpMjZuMXZqcgIIBFoLQXZhdGFyUGhvdG8=',
          name: 'String',
          nullable: false,
        ),
        'id': debugSerializeParam(
          id,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference: 'reference=ChQKDgoCaWQSCGZtc2JhY2VtcgIIA1oCaWQ=',
          name: 'String',
          nullable: false,
        ),
        'idViewProfile': debugSerializeParam(
          idViewProfile,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch8KGQoNaWRWaWV3UHJvZmlsZRIINTZjNmpkMzFyAggDWg1pZFZpZXdQcm9maWxl',
          name: 'String',
          nullable: false,
        ),
        'visibilityPageView': debugSerializeParam(
          visibilityPageView,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiQKHgoSdmlzaWJpbGl0eVBhZ2VWaWV3EggxMnBvcm52bHICCAFaEnZpc2liaWxpdHlQYWdlVmlldw==',
          name: 'int',
          nullable: false,
        ),
        'visibleavatar': debugSerializeParam(
          visibleavatar,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch8KGQoNdmlzaWJsZWF2YXRhchIIYTk3bHlra3NyAggDWg12aXNpYmxlYXZhdGFy',
          name: 'String',
          nullable: false,
        ),
        'indexpageviewfordelete': debugSerializeParam(
          indexpageviewfordelete,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CigKIgoWaW5kZXhwYWdldmlld2ZvcmRlbGV0ZRIIazZhOWpkdmJyAggDWhZpbmRleHBhZ2V2aWV3Zm9yZGVsZXRl',
          name: 'String',
          nullable: false,
        ),
        'indexviewphoto': debugSerializeParam(
          indexviewphoto,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiAKGgoOaW5kZXh2aWV3cGhvdG8SCGhzcnZoejg3cgIIAVoOaW5kZXh2aWV3cGhvdG8=',
          name: 'int',
          nullable: false,
        ),
        'Statuscode1': debugSerializeParam(
          Statuscode1,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLU3RhdHVzY29kZTESCGxuOW8xNnFvcgIIAVoLU3RhdHVzY29kZTE=',
          name: 'int',
          nullable: false,
        ),
        'galleryPageview': debugSerializeParam(
          galleryPageview,
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiMKGwoPZ2FsbGVyeVBhZ2V2aWV3Egh2dzVvazV4M3IEEgIIBFoPZ2FsbGVyeVBhZ2V2aWV3',
          name: 'String',
          nullable: false,
        ),
        'Profilename': debugSerializeParam(
          Profilename,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLUHJvZmlsZW5hbWUSCGY0YmZzOWM3cgIIA1oLUHJvZmlsZW5hbWU=',
          name: 'String',
          nullable: false,
        ),
        'profiledata': debugSerializeParam(
          profiledata,
          ParamType.DataStruct,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CjUKFwoLcHJvZmlsZWRhdGESCDZrMG1ycmUychoIFCoWEhQKC3Byb2ZpbGVkYXRhEgV2dnI4bloLcHJvZmlsZWRhdGE=',
          name: 'profiledata',
          nullable: false,
        ),
        'tornamentid': debugSerializeParam(
          tornamentid,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLdG9ybmFtZW50aWQSCGJ5cWRncGdocgIIA1oLdG9ybmFtZW50aWQ=',
          name: 'String',
          nullable: false,
        ),
        'initialLocation': debugSerializeParam(
          initialLocation,
          ParamType.LatLng,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=CiEKGwoPaW5pdGlhbExvY2F0aW9uEgg3NDUxYTgxZ3ICCA5aD2luaXRpYWxMb2NhdGlvbg==',
          name: 'LatLng',
          nullable: false,
        ),
        'TypeLogUser': debugSerializeParam(
          TypeLogUser,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=appValues&appValuesTab=state',
          searchReference:
              'reference=Ch0KFwoLVHlwZUxvZ1VzZXISCHQ0ZDV6ZDh1cgIIA1oLVHlwZUxvZ1VzZXI=',
          name: 'String',
          nullable: false,
        )
      };
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
