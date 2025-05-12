import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'booking_widget.dart' show BookingWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingModel extends FlutterFlowModel<BookingWidget> {
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (ZapisKtreneru)] action in Button widget.
  ApiCallResponse? _apiResult5a7;
  set apiResult5a7(ApiCallResponse? value) {
    _apiResult5a7 = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResult5a7 => _apiResult5a7;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'date1': debugSerializeParam(
            date1,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
            searchReference:
                'reference=QhoKDgoFZGF0ZTESBTBpc3Z2KgISAHIECAMgAFABWgVkYXRlMWIHQm9va2luZw==',
            name: 'String',
            nullable: true,
          ),
          'yellow1': debugSerializeParam(
            yellow1,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MRIFYm1ocHgqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93MWIHQm9va2luZw==',
            name: 'bool',
            nullable: false,
          ),
          'yellow2': debugSerializeParam(
            yellow2,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MhIFN2JvZWYqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93MmIHQm9va2luZw==',
            name: 'bool',
            nullable: false,
          ),
          'yellow3': debugSerializeParam(
            yellow3,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
            searchReference:
                'reference=QiEKEAoHeWVsbG93MxIFZ3FxZHYqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93M2IHQm9va2luZw==',
            name: 'bool',
            nullable: false,
          ),
          'yellow4': debugSerializeParam(
            yellow4,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
            searchReference:
                'reference=QiEKEAoHeWVsbG93NBIFbXlsNWwqBxIFZmFsc2VyBAgFIAFQAVoHeWVsbG93NGIHQm9va2luZw==',
            name: 'bool',
            nullable: false,
          )
        },
        actionOutputs: {
          'apiResult5a7': debugSerializeParam(
            apiResult5a7,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Booking',
        searchReference: 'reference=OgdCb29raW5nUAFaB0Jvb2tpbmc=',
        widgetClassName: 'Booking',
      );
}
