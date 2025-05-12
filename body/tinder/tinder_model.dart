import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'tinder_widget.dart' show TinderWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TinderModel extends FlutterFlowModel<TinderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;
  // Stores action output result for [Backend Call - API (TinderDislike)] action in SwipeableStack widget.
  ApiCallResponse? _apiResult1g7;
  set apiResult1g7(ApiCallResponse? value) {
    _apiResult1g7 = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResult1g7 => _apiResult1g7;

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (TinderLike)] action in SwipeableStack widget.
  ApiCallResponse? _apiResultsqn;
  set apiResultsqn(ApiCallResponse? value) {
    _apiResultsqn = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultsqn => _apiResultsqn;

  // Stores action output result for [Backend Call - Create Document] action in SwipeableStack widget.
  ChatsRecord? _apiResultzk0;
  set apiResultzk0(ChatsRecord? value) {
    _apiResultzk0 = value;
    debugLogWidgetClass(rootModel);
  }

  ChatsRecord? get apiResultzk0 => _apiResultzk0;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {}

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
        actionOutputs: {
          'apiResult1g7': debugSerializeParam(
            apiResult1g7,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResultsqn': debugSerializeParam(
            apiResultsqn,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResultzk0': debugSerializeParam(
            apiResultzk0,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
            name: 'chats',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Tinder',
        searchReference: 'reference=OgZUaW5kZXJQAVoGVGluZGVy',
        widgetClassName: 'Tinder',
      );
}
