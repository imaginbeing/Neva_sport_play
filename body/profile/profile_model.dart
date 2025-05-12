import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool _visibleavatar = false;
  set visibleavatar(bool value) {
    _visibleavatar = value;
    debugLogWidgetClass(rootModel);
  }

  bool get visibleavatar => _visibleavatar;

  FFUploadedFile? _gallery1;
  set gallery1(FFUploadedFile? value) {
    _gallery1 = value;
    debugLogWidgetClass(rootModel);
  }

  FFUploadedFile? get gallery1 => _gallery1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  Completer<ApiCallResponse>? apiRequestCompleter3;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (gallerysendphoto)] action in Icon widget.
  ApiCallResponse? _apiResultvza;
  set apiResultvza(ApiCallResponse? value) {
    _apiResultvza = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultvza => _apiResultvza;

  Completer<ApiCallResponse>? apiRequestCompleter1;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (gallerydelete)] action in Image widget.
  ApiCallResponse? _apiResult00d;
  set apiResult00d(ApiCallResponse? value) {
    _apiResult00d = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResult00d => _apiResult00d;

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {}

  /// Additional helper methods.
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

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'visibleavatar': debugSerializeParam(
            visibleavatar,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
            searchReference:
                'reference=QicKFgoNdmlzaWJsZWF2YXRhchIFcHVjZzUqBxIFZmFsc2VyBAgFIAFQAVoNdmlzaWJsZWF2YXRhcmIHUHJvZmlsZQ==',
            name: 'bool',
            nullable: false,
          ),
          'gallery1': debugSerializeParam(
            gallery1,
            ParamType.FFUploadedFile,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
            searchReference:
                'reference=QhkKEQoIZ2FsbGVyeTESBWhwOXRzcgQIGCoAUAFaCGdhbGxlcnkxYgdQcm9maWxl',
            name: 'FFUploadedFile',
            nullable: true,
          )
        },
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
            name: 'int',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultvza': debugSerializeParam(
            apiResultvza,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResult00d': debugSerializeParam(
            apiResult00d,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Profile',
        searchReference: 'reference=OgdQcm9maWxlUAFaB1Byb2ZpbGU=',
        widgetClassName: 'Profile',
      );
}
