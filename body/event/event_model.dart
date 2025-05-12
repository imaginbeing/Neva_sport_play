import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'event_widget.dart' show EventWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventModel extends FlutterFlowModel<EventWidget> {
  ///  Local state fields for this page.

  String? _date1;
  set date1(String? value) {
    _date1 = value;
    debugLogWidgetClass(rootModel);
  }

  String? get date1 => _date1;

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

  bool? _sorting = false;
  set sorting(bool? value) {
    _sorting = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get sorting => _sorting;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DataOt widget.
  FocusNode? dataOtFocusNode;
  TextEditingController? dataOtTextController;
  String? Function(BuildContext, String?)? dataOtTextControllerValidator;
  // State field(s) for Datedo widget.
  FocusNode? datedoFocusNode;
  TextEditingController? datedoTextController;
  String? Function(BuildContext, String?)? datedoTextControllerValidator;
  // State field(s) for cenaot widget.
  FocusNode? cenaotFocusNode;
  TextEditingController? cenaotTextController;
  String? Function(BuildContext, String?)? cenaotTextControllerValidator;
  // State field(s) for cenado widget.
  FocusNode? cenadoFocusNode;
  TextEditingController? cenadoTextController;
  String? Function(BuildContext, String?)? cenadoTextControllerValidator;
  // State field(s) for reitingot widget.
  FocusNode? reitingotFocusNode;
  TextEditingController? reitingotTextController;
  String? Function(BuildContext, String?)? reitingotTextControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    dataOtFocusNode?.dispose();
    dataOtTextController?.dispose();

    datedoFocusNode?.dispose();
    datedoTextController?.dispose();

    cenaotFocusNode?.dispose();
    cenaotTextController?.dispose();

    cenadoFocusNode?.dispose();
    cenadoTextController?.dispose();

    reitingotFocusNode?.dispose();
    reitingotTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'date1': debugSerializeParam(
            date1,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            searchReference:
                'reference=QhoKDgoFZGF0ZTESBTBpc3Z2KgISAHIECAMgAFABWgVkYXRlMWIFZXZlbnQ=',
            name: 'String',
            nullable: true,
          ),
          'yellow1': debugSerializeParam(
            yellow1,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MRIFYm1ocHgqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93MWIFZXZlbnQ=',
            name: 'bool',
            nullable: false,
          ),
          'yellow2': debugSerializeParam(
            yellow2,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MhIFN2JvZWYqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93MmIFZXZlbnQ=',
            name: 'bool',
            nullable: false,
          ),
          'yellow3': debugSerializeParam(
            yellow3,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MxIFZ3FxZHYqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93M2IFZXZlbnQ=',
            name: 'bool',
            nullable: false,
          ),
          'yellow4': debugSerializeParam(
            yellow4,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            searchReference:
                'reference=QiEKEAoHeWVsbG93NBIFbXlsNWwqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93NGIFZXZlbnQ=',
            name: 'bool',
            nullable: false,
          ),
          'sorting': debugSerializeParam(
            sorting,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            searchReference:
                'reference=QhYKEAoHc29ydGluZxIFc2dvYjNyAggFUAFaB3NvcnRpbmdiBWV2ZW50',
            name: 'bool',
            nullable: true,
          )
        },
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            name: 'String',
            nullable: true,
          ),
          'dataOtText': debugSerializeParam(
            dataOtTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            name: 'String',
            nullable: true,
          ),
          'datedoText': debugSerializeParam(
            datedoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            name: 'String',
            nullable: true,
          ),
          'cenaotText': debugSerializeParam(
            cenaotTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            name: 'String',
            nullable: true,
          ),
          'cenadoText': debugSerializeParam(
            cenadoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            name: 'String',
            nullable: true,
          ),
          'reitingotText': debugSerializeParam(
            reitingotTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
            name: 'String',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=event',
        searchReference: 'reference=OgVldmVudFABWgVldmVudA==',
        widgetClassName: 'event',
      );
}
