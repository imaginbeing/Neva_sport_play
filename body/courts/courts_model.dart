import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'courts_widget.dart' show CourtsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourtsModel extends FlutterFlowModel<CourtsWidget> {
  ///  Local state fields for this page.

  bool _listofsearch = false;
  set listofsearch(bool value) {
    _listofsearch = value;
    debugLogWidgetClass(rootModel);
  }

  bool get listofsearch => _listofsearch;

  late LoggableList<String> _namecoach = LoggableList([]);
  set namecoach(List<String> value) {
    if (value != null) {
      _namecoach = LoggableList(value);
    }

    debugLogWidgetClass(rootModel);
  }

  List<String> get namecoach =>
      _namecoach?..logger = () => debugLogWidgetClass(rootModel);
  void addToNamecoach(String item) => namecoach.add(item);
  void removeFromNamecoach(String item) => namecoach.remove(item);
  void removeAtIndexFromNamecoach(int index) => namecoach.removeAt(index);
  void insertAtIndexInNamecoach(int index, String item) =>
      namecoach.insert(index, item);
  void updateNamecoachAtIndex(int index, Function(String) updateFn) =>
      namecoach[index] = updateFn(namecoach[index]);

  late LoggableList<String> _descriptioncoach = LoggableList([]);
  set descriptioncoach(List<String> value) {
    if (value != null) {
      _descriptioncoach = LoggableList(value);
    }

    debugLogWidgetClass(rootModel);
  }

  List<String> get descriptioncoach =>
      _descriptioncoach?..logger = () => debugLogWidgetClass(rootModel);
  void addToDescriptioncoach(String item) => descriptioncoach.add(item);
  void removeFromDescriptioncoach(String item) => descriptioncoach.remove(item);
  void removeAtIndexFromDescriptioncoach(int index) =>
      descriptioncoach.removeAt(index);
  void insertAtIndexInDescriptioncoach(int index, String item) =>
      descriptioncoach.insert(index, item);
  void updateDescriptioncoachAtIndex(int index, Function(String) updateFn) =>
      descriptioncoach[index] = updateFn(descriptioncoach[index]);

  bool _sorting = false;
  set sorting(bool value) {
    _sorting = value;
    debugLogWidgetClass(rootModel);
  }

  bool get sorting => _sorting;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (TrainerList)] action in TextField widget.
  ApiCallResponse? _search;
  set search(ApiCallResponse? value) {
    _search = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get search => _search;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'listofsearch': debugSerializeParam(
            listofsearch,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            searchReference:
                'reference=Qh0KFQoMbGlzdG9mc2VhcmNoEgVrdHM0dHIECAUgAVABWgxsaXN0b2ZzZWFyY2hiBkNvdXJ0cw==',
            name: 'bool',
            nullable: false,
          ),
          'namecoach': debugSerializeParam(
            namecoach,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            searchReference:
                'reference=QhwKEgoJbmFtZWNvYWNoEgVhOWN1OXIGEgIIAyABUAFaCW5hbWVjb2FjaGIGQ291cnRz',
            name: 'String',
            nullable: false,
          ),
          'descriptioncoach': debugSerializeParam(
            descriptioncoach,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            searchReference:
                'reference=QicKGQoQZGVzY3JpcHRpb25jb2FjaBIFb2V1ZXMqAhIAcgYSAggDIAFQAVoQZGVzY3JpcHRpb25jb2FjaGIGQ291cnRz',
            name: 'String',
            nullable: false,
          ),
          'sorting': debugSerializeParam(
            sorting,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            searchReference:
                'reference=QiEKEAoHc29ydGluZxIFc3F4YWQqBxIFZmFsc2VyBAgFIAFQAVoHc29ydGluZ2IGQ291cnRz',
            name: 'bool',
            nullable: false,
          )
        },
        widgetStates: {
          'textFieldText1': debugSerializeParam(
            textController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            name: 'String',
            nullable: true,
          ),
          'textFieldText2': debugSerializeParam(
            textController2?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            name: 'String',
            nullable: true,
          ),
          'textFieldText3': debugSerializeParam(
            textController3?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            name: 'String',
            nullable: true,
          ),
          'textFieldText4': debugSerializeParam(
            textController4?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'search': debugSerializeParam(
            search,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Courts',
        searchReference: 'reference=OgZDb3VydHNQAVoGQ291cnRz',
        widgetClassName: 'Courts',
      );
}
