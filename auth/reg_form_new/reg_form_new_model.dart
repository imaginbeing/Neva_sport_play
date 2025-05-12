import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'reg_form_new_widget.dart' show RegFormNewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class RegFormNewModel extends FlutterFlowModel<RegFormNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextFieldmail widget.
  FocusNode? textFieldmailFocusNode;
  TextEditingController? textFieldmailTextController;
  String? Function(BuildContext, String?)? textFieldmailTextControllerValidator;
  String? _textFieldmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Укажите вашу почту!';
    }

    return null;
  }

  // State field(s) for TextFieldpassw widget.
  FocusNode? textFieldpasswFocusNode;
  TextEditingController? textFieldpasswTextController;
  late bool textFieldpasswVisibility;
  String? Function(BuildContext, String?)?
      textFieldpasswTextControllerValidator;
  String? _textFieldpasswTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Укажите ваш пароль';
    }

    return null;
  }

  // State field(s) for TextFieldpasswverif widget.
  FocusNode? textFieldpasswverifFocusNode;
  TextEditingController? textFieldpasswverifTextController;
  late bool textFieldpasswverifVisibility;
  String? Function(BuildContext, String?)?
      textFieldpasswverifTextControllerValidator;
  // State field(s) for TextFieldage widget.
  FocusNode? textFieldageFocusNode;
  TextEditingController? textFieldageTextController;
  final textFieldageMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? textFieldageTextControllerValidator;
  String? _textFieldageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Укажите ваш возраст';
    }

    return null;
  }

  // State field(s) for TextFieldphonenumb widget.
  FocusNode? textFieldphonenumbFocusNode;
  TextEditingController? textFieldphonenumbTextController;
  final textFieldphonenumbMask = MaskTextInputFormatter(mask: '+###########');
  String? Function(BuildContext, String?)?
      textFieldphonenumbTextControllerValidator;
  String? _textFieldphonenumbTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Укажите ваш номер телефона';
    }

    return null;
  }

  // State field(s) for DropDownCity widget.
  String? _dropDownCityValue;
  set dropDownCityValue(String? value) {
    _dropDownCityValue = value;
    debugLogWidgetClass(rootModel);
  }

  String? get dropDownCityValue => _dropDownCityValue;

  FormFieldController<String>? dropDownCityValueController;
  // State field(s) for CheckboxGamerprofile widget.
  bool? _checkboxGamerprofileValue;
  set checkboxGamerprofileValue(bool? value) {
    _checkboxGamerprofileValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxGamerprofileValue => _checkboxGamerprofileValue;

  // State field(s) for CheckboxTrainerprofile widget.
  bool? _checkboxTrainerprofileValue;
  set checkboxTrainerprofileValue(bool? value) {
    _checkboxTrainerprofileValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxTrainerprofileValue => _checkboxTrainerprofileValue;

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextFieldnamegamer widget.
  FocusNode? textFieldnamegamerFocusNode;
  TextEditingController? textFieldnamegamerTextController;
  String? Function(BuildContext, String?)?
      textFieldnamegamerTextControllerValidator;
  // State field(s) for RadioButtongendergamer widget.
  FormFieldController<String>? radioButtongendergamerValueController;
  // State field(s) for TextFieldBirthDategamer widget.
  FocusNode? textFieldBirthDategamerFocusNode;
  TextEditingController? textFieldBirthDategamerTextController;
  final textFieldBirthDategamerMask =
      MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)?
      textFieldBirthDategamerTextControllerValidator;
  // State field(s) for RadioButtonskillgamer widget.
  FormFieldController<String>? radioButtonskillgamerValueController;
  // State field(s) for RadioButtonexpiriencegamer widget.
  FormFieldController<String>? radioButtonexpiriencegamerValueController;
  // Stores action output result for [Backend Call - API (registrationUser)] action in Button widget.
  ApiCallResponse? _apiResultlgb;
  set apiResultlgb(ApiCallResponse? value) {
    _apiResultlgb = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultlgb => _apiResultlgb;

  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? _logserv;
  set logserv(ApiCallResponse? value) {
    _logserv = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get logserv => _logserv;

  // State field(s) for CheckboxOldTennis widget.
  bool? _checkboxOldTennisValue;
  set checkboxOldTennisValue(bool? value) {
    _checkboxOldTennisValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxOldTennisValue => _checkboxOldTennisValue;

  // State field(s) for CheckboxkidTennis widget.
  bool? _checkboxkidTennisValue;
  set checkboxkidTennisValue(bool? value) {
    _checkboxkidTennisValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxkidTennisValue => _checkboxkidTennisValue;

  // State field(s) for CheckboxoldPadel widget.
  bool? _checkboxoldPadelValue;
  set checkboxoldPadelValue(bool? value) {
    _checkboxoldPadelValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxoldPadelValue => _checkboxoldPadelValue;

  // State field(s) for Checkboxkidspadel widget.
  bool? _checkboxkidspadelValue;
  set checkboxkidspadelValue(bool? value) {
    _checkboxkidspadelValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get checkboxkidspadelValue => _checkboxkidspadelValue;

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for NameTrainer widget.
  FocusNode? nameTrainerFocusNode;
  TextEditingController? nameTrainerTextController;
  String? Function(BuildContext, String?)? nameTrainerTextControllerValidator;
  // State field(s) for birthdaytrainer widget.
  FocusNode? birthdaytrainerFocusNode;
  TextEditingController? birthdaytrainerTextController;
  final birthdaytrainerMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)?
      birthdaytrainerTextControllerValidator;
  // State field(s) for gendertrainer widget.
  FormFieldController<String>? gendertrainerValueController;
  // State field(s) for expiriencetrainer widget.
  FormFieldController<String>? expiriencetrainerValueController;
  // State field(s) for Education widget.
  String? _educationValue;
  set educationValue(String? value) {
    _educationValue = value;
    debugLogWidgetClass(rootModel);
  }

  String? get educationValue => _educationValue;

  FormFieldController<String>? educationValueController;
  // State field(s) for monday widget.
  bool? _mondayValue;
  set mondayValue(bool? value) {
    _mondayValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get mondayValue => _mondayValue;

  // State field(s) for tuesday widget.
  bool? _tuesdayValue;
  set tuesdayValue(bool? value) {
    _tuesdayValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get tuesdayValue => _tuesdayValue;

  // State field(s) for thursday widget.
  bool? _thursdayValue;
  set thursdayValue(bool? value) {
    _thursdayValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get thursdayValue => _thursdayValue;

  // State field(s) for chetverg widget.
  bool? _chetvergValue;
  set chetvergValue(bool? value) {
    _chetvergValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get chetvergValue => _chetvergValue;

  // State field(s) for friday widget.
  bool? _fridayValue;
  set fridayValue(bool? value) {
    _fridayValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get fridayValue => _fridayValue;

  // State field(s) for saturday widget.
  bool? _saturdayValue;
  set saturdayValue(bool? value) {
    _saturdayValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get saturdayValue => _saturdayValue;

  // State field(s) for sunday widget.
  bool? _sundayValue;
  set sundayValue(bool? value) {
    _sundayValue = value;
    debugLogWidgetClass(rootModel);
  }

  bool? get sundayValue => _sundayValue;

  // State field(s) for price1hour widget.
  FocusNode? price1hourFocusNode;
  TextEditingController? price1hourTextController;
  String? Function(BuildContext, String?)? price1hourTextControllerValidator;
  // Stores action output result for [Backend Call - API (registrationTrainer)] action in Button widget.
  ApiCallResponse? _apiResultsql;
  set apiResultsql(ApiCallResponse? value) {
    _apiResultsql = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultsql => _apiResultsql;

  // Stores action output result for [Backend Call - API (Login)] action in Button widget.
  ApiCallResponse? _apiResultyqb;
  set apiResultyqb(ApiCallResponse? value) {
    _apiResultyqb = value;
    debugLogWidgetClass(rootModel);
  }

  ApiCallResponse? get apiResultyqb => _apiResultyqb;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    textFieldmailTextControllerValidator =
        _textFieldmailTextControllerValidator;
    textFieldpasswVisibility = false;
    textFieldpasswTextControllerValidator =
        _textFieldpasswTextControllerValidator;
    textFieldpasswverifVisibility = false;
    textFieldageTextControllerValidator = _textFieldageTextControllerValidator;
    textFieldphonenumbTextControllerValidator =
        _textFieldphonenumbTextControllerValidator;

    debugLogWidgetClass(rootModel);
  }

  @override
  void dispose() {
    textFieldmailFocusNode?.dispose();
    textFieldmailTextController?.dispose();

    textFieldpasswFocusNode?.dispose();
    textFieldpasswTextController?.dispose();

    textFieldpasswverifFocusNode?.dispose();
    textFieldpasswverifTextController?.dispose();

    textFieldageFocusNode?.dispose();
    textFieldageTextController?.dispose();

    textFieldphonenumbFocusNode?.dispose();
    textFieldphonenumbTextController?.dispose();

    textFieldnamegamerFocusNode?.dispose();
    textFieldnamegamerTextController?.dispose();

    textFieldBirthDategamerFocusNode?.dispose();
    textFieldBirthDategamerTextController?.dispose();

    nameTrainerFocusNode?.dispose();
    nameTrainerTextController?.dispose();

    birthdaytrainerFocusNode?.dispose();
    birthdaytrainerTextController?.dispose();

    price1hourFocusNode?.dispose();
    price1hourTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtongendergamerValue =>
      radioButtongendergamerValueController?.value;
  String? get radioButtonskillgamerValue =>
      radioButtonskillgamerValueController?.value;
  String? get radioButtonexpiriencegamerValue =>
      radioButtonexpiriencegamerValueController?.value;
  String? get gendertrainerValue => gendertrainerValueController?.value;
  String? get expiriencetrainerValue => expiriencetrainerValueController?.value;
  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetStates: {
          'pageViewCurrentIndex': debugSerializeParam(
            pageViewCurrentIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'int',
            nullable: true,
          ),
          'textFieldmailText': debugSerializeParam(
            textFieldmailTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'textFieldpasswText': debugSerializeParam(
            textFieldpasswTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'textFieldpasswverifText': debugSerializeParam(
            textFieldpasswverifTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'textFieldageText': debugSerializeParam(
            textFieldageTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'textFieldphonenumbText': debugSerializeParam(
            textFieldphonenumbTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'dropDownCityValue': debugSerializeParam(
            dropDownCityValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'checkboxGamerprofileValue': debugSerializeParam(
            checkboxGamerprofileValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'checkboxTrainerprofileValue': debugSerializeParam(
            checkboxTrainerprofileValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'textFieldnamegamerText': debugSerializeParam(
            textFieldnamegamerTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'radioButtongendergamerValue': debugSerializeParam(
            radioButtongendergamerValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'textFieldBirthDategamerText': debugSerializeParam(
            textFieldBirthDategamerTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'radioButtonskillgamerValue': debugSerializeParam(
            radioButtonskillgamerValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'radioButtonexpiriencegamerValue': debugSerializeParam(
            radioButtonexpiriencegamerValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'checkboxOldTennisValue': debugSerializeParam(
            checkboxOldTennisValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'checkboxkidTennisValue': debugSerializeParam(
            checkboxkidTennisValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'checkboxoldPadelValue': debugSerializeParam(
            checkboxoldPadelValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'checkboxkidspadelValue': debugSerializeParam(
            checkboxkidspadelValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'nameTrainerText': debugSerializeParam(
            nameTrainerTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'birthdaytrainerText': debugSerializeParam(
            birthdaytrainerTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'gendertrainerValue': debugSerializeParam(
            gendertrainerValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'expiriencetrainerValue': debugSerializeParam(
            expiriencetrainerValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'educationValue': debugSerializeParam(
            educationValue,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          ),
          'mondayValue': debugSerializeParam(
            mondayValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'tuesdayValue': debugSerializeParam(
            tuesdayValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'thursdayValue': debugSerializeParam(
            thursdayValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'chetvergValue': debugSerializeParam(
            chetvergValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'fridayValue': debugSerializeParam(
            fridayValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'saturdayValue': debugSerializeParam(
            saturdayValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'sundayValue': debugSerializeParam(
            sundayValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'bool',
            nullable: true,
          ),
          'price1hourText': debugSerializeParam(
            price1hourTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'String',
            nullable: true,
          )
        },
        actionOutputs: {
          'apiResultlgb': debugSerializeParam(
            apiResultlgb,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'logserv': debugSerializeParam(
            logserv,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResultsql': debugSerializeParam(
            apiResultsql,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
            name: 'ApiCallResponse',
            nullable: true,
          ),
          'apiResultyqb': debugSerializeParam(
            apiResultyqb,
            ParamType.ApiResponse,
            link:
                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
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
            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq/tab=uiBuilder&page=RegFormNew',
        searchReference: 'reference=OgpSZWdGb3JtTmV3UAFaClJlZ0Zvcm1OZXc=',
        widgetClassName: 'RegFormNew',
      );
}
