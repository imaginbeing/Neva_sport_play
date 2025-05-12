import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'clubs_profile_widget.dart' show ClubsProfileWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ClubsProfileModel extends FlutterFlowModel<ClubsProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
        widgetParameters: {
          'clubid': debugSerializeParam(
            widget?.clubid,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
            searchReference:
                'reference=ShgKEAoGY2x1YmlkEgZjMjV6ZWRyBAgDIAFQAVoGY2x1Ymlk',
            name: 'String',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
            name: 'int',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultzk0': debugSerializeParam(
            apiResultzk0,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=ClubsProfile',
        searchReference: 'reference=OgxDbHVic1Byb2ZpbGVQAVoMQ2x1YnNQcm9maWxl',
        widgetClassName: 'ClubsProfile',
      );
}
