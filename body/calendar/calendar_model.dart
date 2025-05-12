import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'calendar_widget.dart' show CalendarWidget;
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalendarModel extends FlutterFlowModel<CalendarWidget> {
  ///  Local state fields for this page.

  bool _yellow1 = false;
  set yellow1(bool value) {
    _yellow1 = value;
    debugLogWidgetClass(rootModel);
  }

  bool get yellow1 => _yellow1;

  bool _yellow2 = false;
  set yellow2(bool value) {
    _yellow2 = value;
    debugLogWidgetClass(rootModel);
  }

  bool get yellow2 => _yellow2;

  bool _yellow3 = false;
  set yellow3(bool value) {
    _yellow3 = value;
    debugLogWidgetClass(rootModel);
  }

  bool get yellow3 => _yellow3;

  bool _yellow4 = false;
  set yellow4(bool value) {
    _yellow4 = value;
    debugLogWidgetClass(rootModel);
  }

  bool get yellow4 => _yellow4;

  late LoggableList<String> _listidtrainer = LoggableList([]);
  set listidtrainer(List<String> value) {
    if (value != null) {
      _listidtrainer = LoggableList(value);
    }

    debugLogWidgetClass(rootModel);
  }

  List<String> get listidtrainer =>
      _listidtrainer?..logger = () => debugLogWidgetClass(rootModel);
  void addToListidtrainer(String item) => listidtrainer.add(item);
  void removeFromListidtrainer(String item) => listidtrainer.remove(item);
  void removeAtIndexFromListidtrainer(int index) =>
      listidtrainer.removeAt(index);
  void insertAtIndexInListidtrainer(int index, String item) =>
      listidtrainer.insert(index, item);
  void updateListidtrainerAtIndex(int index, Function(String) updateFn) =>
      listidtrainer[index] = updateFn(listidtrainer[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (catalog)] action in Calendar widget.
  ApiCallResponse? _sessions;
  set sessions(ApiCallResponse? value) {
    _sessions = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get sessions => _sessions;

  // Stores action output result for [Backend Call - API (TrainerProfile)] action in Calendar widget.
  ApiCallResponse? _nametrainerlist;
  set nametrainerlist(ApiCallResponse? value) {
    _nametrainerlist = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get nametrainerlist => _nametrainerlist;

  Completer<ApiCallResponse>? apiRequestCompleter2;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  Completer<ApiCallResponse>? apiRequestCompleter3;
  DateTime? datePicked;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (cancel)] action in Button widget.
  ApiCallResponse? _apiResultk39Copy;
  set apiResultk39Copy(ApiCallResponse? value) {
    _apiResultk39Copy = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultk39Copy => _apiResultk39Copy;

  // Stores action output result for [Backend Call - API (Approve)] action in Button widget.
  ApiCallResponse? _apiResultk39;
  set apiResultk39(ApiCallResponse? value) {
    _apiResultk39 = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultk39 => _apiResultk39;

  // Stores action output result for [Backend Call - API (cancel)] action in Button widget.
  ApiCallResponse? _actionn;
  set actionn(ApiCallResponse? value) {
    _actionn = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get actionn => _actionn;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'back': debugSerializeParam(
            widget?.back,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            searchReference:
                'reference=ShQKDgoEYmFjaxIGaHdsdjk2cgIIBVABWgRiYWNr',
            name: 'bool',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'yellow1': debugSerializeParam(
            yellow1,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            searchReference:
                'reference=QhgKEAoHeWVsbG93MRIFNTZ6MW9yBAgFIAFQAVoHeWVsbG93MWIIQ2FsZW5kYXI=',
            name: 'bool',
            nullable: false,
          ),
          'yellow2': debugSerializeParam(
            yellow2,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MhIFbHNhOW4qBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93MmIIQ2FsZW5kYXI=',
            name: 'bool',
            nullable: false,
          ),
          'yellow3': debugSerializeParam(
            yellow3,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MxIFZm5kNHQqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93M2IIQ2FsZW5kYXI=',
            name: 'bool',
            nullable: false,
          ),
          'yellow4': debugSerializeParam(
            yellow4,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            searchReference:
                'reference=QiEKEAoHeWVsbG93NBIFM3UwZmsqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93NGIIQ2FsZW5kYXI=',
            name: 'bool',
            nullable: false,
          ),
          'listidtrainer': debugSerializeParam(
            listidtrainer,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            searchReference:
                'reference=QiAKFgoNbGlzdGlkdHJhaW5lchIFMnBtbGJyBhICCAMgAVABWg1saXN0aWR0cmFpbmVyYghDYWxlbmRhcg==',
            name: 'String',
            nullable: false,
          )
        },
        widgetStates: {
          'tabBarCurrentIndex': debugSerializeParam(
            tabBarCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            name: 'int',
            nullable: true,
          )
        },
        actionOutputs: {
          'sessions': debugSerializeParam(
            sessions,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'nametrainerlist': debugSerializeParam(
            nametrainerlist,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResultk39Copy': debugSerializeParam(
            apiResultk39Copy,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResultk39': debugSerializeParam(
            apiResultk39,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'actionn': debugSerializeParam(
            actionn,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
            name: 'ApiCallResponse',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Calendar',
        searchReference: 'reference=OghDYWxlbmRhclABWghDYWxlbmRhcg==',
        widgetClassName: 'Calendar',
      );
}
