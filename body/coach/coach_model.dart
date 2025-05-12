import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'coach_widget.dart' show CoachWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CoachModel extends FlutterFlowModel<CoachWidget> {
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
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (TrainerList)] action in TextField widget.
  ApiCallResponse? _search;
  set search(ApiCallResponse? value) {
    _search = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get search => _search;

  // State field(s) for StagOt widget.
  FocusNode? stagOtFocusNode;
  TextEditingController? stagOtTextController;
  String? Function(BuildContext, String?)? stagOtTextControllerValidator;
  // State field(s) for stagdo widget.
  FocusNode? stagdoFocusNode;
  TextEditingController? stagdoTextController;
  String? Function(BuildContext, String?)? stagdoTextControllerValidator;
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

    stagOtFocusNode?.dispose();
    stagOtTextController?.dispose();

    stagdoFocusNode?.dispose();
    stagdoTextController?.dispose();

    cenaotFocusNode?.dispose();
    cenaotTextController?.dispose();

    cenadoFocusNode?.dispose();
    cenadoTextController?.dispose();

    reitingotFocusNode?.dispose();
    reitingotTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'listofsearch': debugSerializeParam(
            listofsearch,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            searchReference:
                'reference=Qh0KFQoMbGlzdG9mc2VhcmNoEgVrdHM0dHIECAUgAVABWgxsaXN0b2ZzZWFyY2hiBUNvYWNo',
            name: 'bool',
            nullable: false,
          ),
          'namecoach': debugSerializeParam(
            namecoach,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            searchReference:
                'reference=QhwKEgoJbmFtZWNvYWNoEgVhOWN1OXIGEgIIAyABUAFaCW5hbWVjb2FjaGIFQ29hY2g=',
            name: 'String',
            nullable: false,
          ),
          'descriptioncoach': debugSerializeParam(
            descriptioncoach,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            searchReference:
                'reference=QicKGQoQZGVzY3JpcHRpb25jb2FjaBIFb2V1ZXMqAhIAcgYSAggDIAFQAVoQZGVzY3JpcHRpb25jb2FjaGIFQ29hY2g=',
            name: 'String',
            nullable: false,
          ),
          'sorting': debugSerializeParam(
            sorting,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            searchReference:
                'reference=QiEKEAoHc29ydGluZxIFNjVrNnoqBxIFZmFsc2VyBAgFIAFQAVoHc29ydGluZ2IFQ29hY2g=',
            name: 'bool',
            nullable: false,
          )
        },
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController1?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            name: 'String',
            nullable: true,
          ),
          'stagOtText': debugSerializeParam(
            stagOtTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            name: 'String',
            nullable: true,
          ),
          'stagdoText': debugSerializeParam(
            stagdoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            name: 'String',
            nullable: true,
          ),
          'cenaotText': debugSerializeParam(
            cenaotTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            name: 'String',
            nullable: true,
          ),
          'cenadoText': debugSerializeParam(
            cenadoTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            name: 'String',
            nullable: true,
          ),
          'reitingotText': debugSerializeParam(
            reitingotTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'search': debugSerializeParam(
            search,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Coach',
        searchReference: 'reference=OgVDb2FjaFABWgVDb2FjaA==',
        widgetClassName: 'Coach',
      );
}
