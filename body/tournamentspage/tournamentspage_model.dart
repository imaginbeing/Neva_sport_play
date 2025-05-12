import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'tournamentspage_widget.dart' show TournamentspageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TournamentspageModel extends FlutterFlowModel<TournamentspageWidget> {
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
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=tournamentspage',
            searchReference:
                'reference=QigKFwoOdmlzaWJsZWdhbGxlcnkSBWphcDJsKgcSBWZhbHNlcgQIBSABUAFaDnZpc2libGVnYWxsZXJ5Yg90b3VybmFtZW50c3BhZ2U=',
            name: 'bool',
            nullable: false,
          ),
          'visibleava': debugSerializeParam(
            visibleava,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=tournamentspage',
            searchReference:
                'reference=QiQKEwoKdmlzaWJsZWF2YRIFNmJ3b3oqBxIFZmFsc2VyBAgFIAFQAVoKdmlzaWJsZWF2YWIPdG91cm5hbWVudHNwYWdl',
            name: 'bool',
            nullable: false,
          ),
          'selectedpage': debugSerializeParam(
            selectedpage,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=tournamentspage',
            searchReference:
                'reference=Qh0KFQoMc2VsZWN0ZWRwYWdlEgU1d2x0a3IECAEgAFABWgxzZWxlY3RlZHBhZ2ViD3RvdXJuYW1lbnRzcGFnZQ==',
            name: 'int',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=tournamentspage',
        searchReference:
            'reference=Og90b3VybmFtZW50c3BhZ2VQAVoPdG91cm5hbWVudHNwYWdl',
        widgetClassName: 'tournamentspage',
      );
}
