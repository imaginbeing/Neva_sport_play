import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'coach_profile_widget.dart' show CoachProfileWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CoachProfileModel extends FlutterFlowModel<CoachProfileWidget> {
  ///  Local state fields for this page.

  bool _visiblegallery = false;
  set visiblegallery(bool value) {
    _visiblegallery = value;
    debugLogWidgetClass(rootModel);
  }

  bool get visiblegallery => _visiblegallery;

  bool _visibleava = false;
  set visibleava(bool value) {
    _visibleava = value;
    debugLogWidgetClass(rootModel);
  }

  bool get visibleava => _visibleava;

  int? _selectedpage;
  set selectedpage(int? value) {
    _selectedpage = value;
    debugLogWidgetClass(rootModel);
  }

  int? get selectedpage => _selectedpage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ChatsRecord>? _listofchats;
  set listofchats(List<ChatsRecord>? value) {
    _listofchats = value;
    debugLogWidgetClass(rootModel);
  }

  List<ChatsRecord>? get listofchats => _listofchats;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? _apiResultzk0;
  set apiResultzk0(ChatsRecord? value) {
    _apiResultzk0 = value;
    debugLogWidgetClass(rootModel);
  }

  ChatsRecord? get apiResultzk0 => _apiResultzk0;

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

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'visiblegallery': debugSerializeParam(
            visiblegallery,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
            searchReference:
                'reference=QigKFwoOdmlzaWJsZWdhbGxlcnkSBWphcDJsKgcSBWZhbHNlcgQIBSABUAFaDnZpc2libGVnYWxsZXJ5YgxDb2FjaFByb2ZpbGU=',
            name: 'bool',
            nullable: false,
          ),
          'visibleava': debugSerializeParam(
            visibleava,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
            searchReference:
                'reference=QiQKEwoKdmlzaWJsZWF2YRIFNmJ3b3oqBxIFZmFsc2VyBAgFIAFQAVoKdmlzaWJsZWF2YWIMQ29hY2hQcm9maWxl',
            name: 'bool',
            nullable: false,
          ),
          'selectedpage': debugSerializeParam(
            selectedpage,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
            searchReference:
                'reference=Qh0KFQoMc2VsZWN0ZWRwYWdlEgU1d2x0a3IECAEgAFABWgxzZWxlY3RlZHBhZ2ViDENvYWNoUHJvZmlsZQ==',
            name: 'int',
            nullable: true,
          )
        },
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
            name: 'int',
            nullable: true,
          )
        },
        actionOutputs: {
          'listofchats': debugSerializeParam(
            listofchats,
            ParamType.Document,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
            name: 'chats',
            nullable: true,
          ),
          'apiResultzk0': debugSerializeParam(
            apiResultzk0,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=CoachProfile',
        searchReference: 'reference=OgxDb2FjaFByb2ZpbGVQAVoMQ29hY2hQcm9maWxl',
        widgetClassName: 'CoachProfile',
      );
}
