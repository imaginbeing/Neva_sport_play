import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  Local state fields for this page.

  String _message = '';
  set message(String value) {
    _message = value;
    debugLogWidgetClass(rootModel);
  }

  String get message => _message;

  bool _visibleMenu = false;
  set visibleMenu(bool value) {
    _visibleMenu = value;
    debugLogWidgetClass(rootModel);
  }

  bool get visibleMenu => _visibleMenu;

  bool _visibleZapis = false;
  set visibleZapis(bool value) {
    _visibleZapis = value;
    debugLogWidgetClass(rootModel);
  }

  bool get visibleZapis => _visibleZapis;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

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
        widgetParameters: {
          'recieve': debugSerializeParam(
            widget?.recieve,
            ParamType.DocumentReference,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ChatPage',
            searchReference:
                'reference=SiQKEQoHcmVjaWV2ZRIGeGdxazlwcg8IBiABKgkKBwoFY2hhdHNQAVoHcmVjaWV2ZQ==',
            name: 'chats',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'message': debugSerializeParam(
            message,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ChatPage',
            searchReference:
                'reference=QhgKEAoHbWVzc2FnZRIFYjFyemdyBAgDIAFQAVoHbWVzc2FnZWIIQ2hhdFBhZ2U=',
            name: 'String',
            nullable: false,
          ),
          'visibleMenu': debugSerializeParam(
            visibleMenu,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ChatPage',
            searchReference:
                'reference=QiUKFAoLdmlzaWJsZU1lbnUSBWhzZHZtKgcSBWZhbHNlcgQIBSABUAFaC3Zpc2libGVNZW51YghDaGF0UGFnZQ==',
            name: 'bool',
            nullable: false,
          ),
          'visibleZapis': debugSerializeParam(
            visibleZapis,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ChatPage',
            searchReference:
                'reference=QiYKFQoMdmlzaWJsZVphcGlzEgVicHU4dCoHEgVmYWxzZXIECAUgAVABWgx2aXNpYmxlWmFwaXNiCENoYXRQYWdl',
            name: 'bool',
            nullable: false,
          )
        },
        widgetStates: {
          'textFieldText': debugSerializeParam(
            textController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ChatPage',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=ChatPage',
        searchReference: 'reference=OghDaGF0UGFnZVABWghDaGF0UGFnZQ==',
        widgetClassName: 'ChatPage',
      );
}
