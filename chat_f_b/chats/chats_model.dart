import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'chats_widget.dart' show ChatsWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatsModel extends FlutterFlowModel<ChatsWidget> {
  ///  Local state fields for this page.

  late LoggableList<String> _idChatsUser = LoggableList([]);
  set idChatsUser(List<String> value) {
    if (value != null) {
      _idChatsUser = LoggableList(value);
    }

    debugLogWidgetClass(rootModel);
  }

  List<String> get idChatsUser =>
      _idChatsUser?..logger = () => debugLogWidgetClass(rootModel);
  void addToIdChatsUser(String item) => idChatsUser.add(item);
  void removeFromIdChatsUser(String item) => idChatsUser.remove(item);
  void removeAtIndexFromIdChatsUser(int index) => idChatsUser.removeAt(index);
  void insertAtIndexInIdChatsUser(int index, String item) =>
      idChatsUser.insert(index, item);
  void updateIdChatsUserAtIndex(int index, Function(String) updateFn) =>
      idChatsUser[index] = updateFn(idChatsUser[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) {
    choiceChipsValueController?.value = val != null ? [val] : [];
    debugLogWidgetClass(rootModel);
  }

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
    textController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'idChatsUser': debugSerializeParam(
            idChatsUser,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Chats',
            searchReference:
                'reference=QiIKFAoLaWRDaGF0c1VzZXISBWh3cjNjKgISAHIGEgIIAyABUAFaC2lkQ2hhdHNVc2VyYgVDaGF0cw==',
            name: 'String',
            nullable: false,
          )
        },
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Chats',
            name: 'String',
            nullable: true,
          ),
          'choiceChipsValue': debugSerializeParam(
            choiceChipsValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Chats',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=Chats',
        searchReference: 'reference=OgVDaGF0c1ABWgVDaGF0cw==',
        widgetClassName: 'Chats',
      );
}
