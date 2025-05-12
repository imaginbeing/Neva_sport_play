import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
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
import 'coach_profile_model.dart';
export 'coach_profile_model.dart';

class CoachProfileWidget extends StatefulWidget {
  const CoachProfileWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CoachProfileWidget> createState() => _CoachProfileWidgetState();
}

class _CoachProfileWidgetState extends State<CoachProfileWidget>
    with RouteAware {
  late CoachProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CoachProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, DebugModalRoute.of(context)!);
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    if (mounted) {
      setState(() => _model.isRouteVisible = true);
    }
    debugLogWidgetClass(_model);
  }

  @override
  void didPush() {
    if (mounted) {
      setState(() => _model.isRouteVisible = true);
    }
    debugLogWidgetClass(_model);
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    widget.addModelFn?.call(_model);
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: TrainerProfileCall.call(
        id: FFAppState().idViewProfile,
        authToken: FFAppState().token,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFF6F6F6),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitRing(
                  color: Color(0xFF5E5E61),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final coachProfileTrainerProfileResponse = snapshot.data!;
        _model.debugBackendQueries[
                'TrainerProfileCall_statusCode_Scaffold_5r3djnlg'] =
            debugSerializeParam(
          coachProfileTrainerProfileResponse.statusCode,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'TrainerProfileCall_responseBody_Scaffold_5r3djnlg'] =
            debugSerializeParam(
          coachProfileTrainerProfileResponse.bodyText,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
          name: 'String',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF6F6F6),
            body: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 35.0, 15.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 3.63,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 5.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed('HomePage');
                                              },
                                              child: Container(
                                                width: 39.0,
                                                height: 39.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.safePop();
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Back.svg',
                                                        width: 300.0,
                                                        height: 200.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 15.0, 0.0),
                                            child: Text(
                                              'Играет с ${TrainerProfileSchemaStruct.maybeFromMap(coachProfileTrainerProfileResponse.jsonBody)?.created}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        GoogleFonts.asMap()
                                                            .containsKey(
                                                                'Montserrat'),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 15.0, 0.0, 0.0),
                                            child: Container(
                                              width: 120.0,
                                              height: 120.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.visibleava =
                                                      !_model.visibleava;
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  width: 120.0,
                                                  height: 120.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      TrainerProfileSchemaStruct
                                                              .maybeFromMap(
                                                                  coachProfileTrainerProfileResponse
                                                                      .jsonBody)
                                                          ?.avatar,
                                                      'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          21.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      TrainerProfileCall.name(
                                                        coachProfileTrainerProfileResponse
                                                            .jsonBody,
                                                      ),
                                                      'null',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Montserrat'),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        21.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Рейтинг: ${valueOrDefault<String>(
                                                    TrainerProfileSchemaStruct
                                                            .maybeFromMap(
                                                                coachProfileTrainerProfileResponse
                                                                    .jsonBody)
                                                        ?.rating
                                                        ?.toString(),
                                                    'rating',
                                                  )}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Montserrat'),
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        21.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Text(
                                                    'Тренер по ${() {
                                                      if (TrainerProfileSchemaStruct
                                                                  .maybeFromMap(
                                                                      coachProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                              ?.trainerInfo
                                                              ?.tennisAge ==
                                                          1) {
                                                        return 'детскому теннису';
                                                      } else if (TrainerProfileSchemaStruct
                                                                  .maybeFromMap(
                                                                      coachProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                              ?.trainerInfo
                                                              ?.tennisAge ==
                                                          2) {
                                                        return 'Теннису';
                                                      } else {
                                                        return ' ';
                                                      }
                                                    }()}${() {
                                                      if ((TrainerProfileSchemaStruct.maybeFromMap(coachProfileTrainerProfileResponse.jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.tennisAge ==
                                                              1) &&
                                                          (TrainerProfileSchemaStruct.maybeFromMap(coachProfileTrainerProfileResponse.jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.paddleAge ==
                                                              2)) {
                                                        return ' и ';
                                                      } else if ((TrainerProfileSchemaStruct.maybeFromMap(coachProfileTrainerProfileResponse.jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.tennisAge ==
                                                              1) &&
                                                          (TrainerProfileSchemaStruct.maybeFromMap(coachProfileTrainerProfileResponse.jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.paddleAge ==
                                                              1)) {
                                                        return ' и ';
                                                      } else if ((TrainerProfileSchemaStruct.maybeFromMap(coachProfileTrainerProfileResponse.jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.tennisAge ==
                                                              2) &&
                                                          (TrainerProfileSchemaStruct.maybeFromMap(
                                                                      coachProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.paddleAge ==
                                                              2)) {
                                                        return ' и ';
                                                      } else if ((TrainerProfileSchemaStruct.maybeFromMap(
                                                                      coachProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.tennisAge ==
                                                              2) &&
                                                          (TrainerProfileSchemaStruct.maybeFromMap(
                                                                      coachProfileTrainerProfileResponse.jsonBody)
                                                                  ?.trainerInfo
                                                                  ?.paddleAge ==
                                                              1)) {
                                                        return ' и ';
                                                      } else {
                                                        return ' ';
                                                      }
                                                    }()}${() {
                                                      if (TrainerProfileSchemaStruct
                                                                  .maybeFromMap(
                                                                      coachProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                              ?.trainerInfo
                                                              ?.paddleAge ==
                                                          1) {
                                                        return 'детскому паделу';
                                                      } else if (TrainerProfileSchemaStruct
                                                                  .maybeFromMap(
                                                                      coachProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                              ?.trainerInfo
                                                              ?.paddleAge ==
                                                          2) {
                                                        return 'паделу';
                                                      } else {
                                                        return ' ';
                                                      }
                                                    }()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Montserrat'),
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        21.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Стаж ${() {
                                                    if (TrainerProfileSchemaStruct
                                                                .maybeFromMap(
                                                                    coachProfileTrainerProfileResponse
                                                                        .jsonBody)
                                                            ?.expirience ==
                                                        1) {
                                                      return 'менее 1 года';
                                                    } else if (TrainerProfileSchemaStruct
                                                                .maybeFromMap(
                                                                    coachProfileTrainerProfileResponse
                                                                        .jsonBody)
                                                            ?.expirience ==
                                                        2) {
                                                      return 'от 1 до 3 лет';
                                                    } else if (TrainerProfileSchemaStruct
                                                                .maybeFromMap(
                                                                    coachProfileTrainerProfileResponse
                                                                        .jsonBody)
                                                            ?.expirience ==
                                                        3) {
                                                      return 'от 3 до 5 лет';
                                                    } else if (TrainerProfileSchemaStruct
                                                                .maybeFromMap(
                                                                    coachProfileTrainerProfileResponse
                                                                        .jsonBody)
                                                            ?.expirience ==
                                                        4) {
                                                      return 'более 5 лет';
                                                    } else {
                                                      return 'отсутствует';
                                                    }
                                                  }()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 10.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts:
                                                            GoogleFonts.asMap()
                                                                .containsKey(
                                                                    'Montserrat'),
                                                      ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  21.0,
                                                                  9.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 70.0,
                                                        height: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    10.0),
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'Тренер',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(9.0, 9.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 70.0,
                                                      height: 20.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  10.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  10.0),
                                                        ),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Оценка',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 10.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Montserrat'),
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 15.0, 15.0, 10.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        TrainerProfileSchemaStruct.maybeFromMap(
                                                coachProfileTrainerProfileResponse
                                                    .jsonBody)
                                            ?.description,
                                        'Описание',
                                      ),
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Стоймость тренировки в час:${TrainerProfileCall.price(
                                            coachProfileTrainerProfileResponse
                                                .jsonBody,
                                          )?.toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35.0, 15.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Галерея',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Container(
                                      width: 336.0,
                                      height: 169.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: GalleryCall.call(
                                          clientId: FFAppState().idViewProfile,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitRing(
                                                  color: Color(0xFF5E5E61),
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          final rowGalleryResponse =
                                              snapshot.data!;
                                          _model.debugBackendQueries[
                                                  'GalleryCall_statusCode_Row_dpapy03v'] =
                                              debugSerializeParam(
                                            rowGalleryResponse.statusCode,
                                            ParamType.int,
                                            link:
                                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                            name: 'int',
                                            nullable: false,
                                          );
                                          _model.debugBackendQueries[
                                                  'GalleryCall_responseBody_Row_dpapy03v'] =
                                              debugSerializeParam(
                                            rowGalleryResponse.bodyText,
                                            ParamType.String,
                                            link:
                                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                            name: 'String',
                                            nullable: false,
                                          );
                                          debugLogWidgetClass(_model);

                                          return Builder(
                                            builder: (context) {
                                              final gallery = (rowGalleryResponse
                                                              .jsonBody
                                                              .toList()
                                                              .map<GallerylistStruct?>(
                                                                  GallerylistStruct
                                                                      .maybeFromMap)
                                                              .toList()
                                                          as Iterable<
                                                              GallerylistStruct?>)
                                                      .withoutNulls
                                                      ?.toList() ??
                                                  [];
                                              _model.debugGeneratorVariables[
                                                      'gallery${gallery.length > 100 ? ' (first 100)' : ''}'] =
                                                  debugSerializeParam(
                                                gallery.take(100),
                                                ParamType.DataStruct,
                                                isList: true,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                                name: 'gallerylist',
                                                nullable: false,
                                              );
                                              debugLogWidgetClass(_model);

                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      gallery.length,
                                                      (galleryIndex) {
                                                    final galleryItem =
                                                        gallery[galleryIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.visiblegallery =
                                                            !_model
                                                                .visiblegallery;
                                                        setState(() {});
                                                        _model.selectedpage =
                                                            galleryIndex;
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            galleryItem
                                                                .imageUrl,
                                                            'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                          ),
                                                          width: 135.0,
                                                          height: 168.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    );
                                                  }).divide(
                                                      SizedBox(width: 3.0)),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: StreamBuilder<List<ChatsRecord>>(
                            stream: queryChatsRecord(
                              queryBuilder: (chatsRecord) => chatsRecord
                                  .where(
                                    'usersId',
                                    arrayContains: FFAppState().profiledata.id,
                                  )
                                  .orderBy('TimeStamp', descending: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitRing(
                                      color: Color(0xFF5E5E61),
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<ChatsRecord> buttonChatsRecordList =
                                  snapshot.data!;

                              _model.debugBackendQueries[
                                      'buttonChatsRecordList_Button_03x8xtst${buttonChatsRecordList.length > 100 ? ' (first 100)' : ''}'] =
                                  debugSerializeParam(
                                buttonChatsRecordList.take(100),
                                ParamType.Document,
                                isList: true,
                                link:
                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                name: 'chats',
                                nullable: false,
                              );
                              debugLogWidgetClass(_model);

                              return FFButtonWidget(
                                onPressed: () async {
                                  _model.listofchats =
                                      await queryChatsRecordOnce(
                                    queryBuilder: (chatsRecord) =>
                                        chatsRecord.where(
                                      'usersId',
                                      arrayContains: TrainerProfileCall.id(
                                        coachProfileTrainerProfileResponse
                                            .jsonBody,
                                      ),
                                    ),
                                  );
                                  if ((_model.listofchats != null &&
                                          (_model.listofchats)!.isNotEmpty) ==
                                      true) {
                                    context.pushNamed(
                                      'ChatPage',
                                      queryParameters: {
                                        'recieve': serializeParam(
                                          _model.listofchats?.first?.reference,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else {
                                    var chatsRecordReference =
                                        ChatsRecord.collection.doc();
                                    await chatsRecordReference.set({
                                      ...createChatsRecordData(
                                        lastMessage: 'hello',
                                        timeStamp: getCurrentTimestamp,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'usersId': functions.listOfUser(
                                              FFAppState().profiledata.id,
                                              FFAppState().idViewProfile),
                                          'UserNames':
                                              functions.listOfNamechats(
                                                  FFAppState().profiledata.name,
                                                  valueOrDefault<String>(
                                                    TrainerProfileSchemaStruct
                                                            .maybeFromMap(
                                                                coachProfileTrainerProfileResponse
                                                                    .jsonBody)
                                                        ?.name,
                                                    'name',
                                                  )),
                                        },
                                      ),
                                    });
                                    _model.apiResultzk0 =
                                        ChatsRecord.getDocumentFromData({
                                      ...createChatsRecordData(
                                        lastMessage: 'hello',
                                        timeStamp: getCurrentTimestamp,
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'usersId': functions.listOfUser(
                                              FFAppState().profiledata.id,
                                              FFAppState().idViewProfile),
                                          'UserNames':
                                              functions.listOfNamechats(
                                                  FFAppState().profiledata.name,
                                                  valueOrDefault<String>(
                                                    TrainerProfileSchemaStruct
                                                            .maybeFromMap(
                                                                coachProfileTrainerProfileResponse
                                                                    .jsonBody)
                                                        ?.name,
                                                    'name',
                                                  )),
                                        },
                                      ),
                                    }, chatsRecordReference);
                                  }

                                  setState(() {});
                                },
                                text: 'Написать сообщение',
                                options: FFButtonOptions(
                                  width: 353.0,
                                  height: 56.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Montserrat'),
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(28.0),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Booking');
                            },
                            text: 'Записаться на тренировку',
                            options: FFButtonOptions(
                              width: 353.0,
                              height: 56.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Montserrat'),
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (_model.visiblegallery == true)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().visibilityPageView = 0;
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x6E535353),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 25.0, 100.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.visiblegallery =
                                        !_model.visiblegallery;

                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.close_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: GalleryCall.call(
                                  clientId: FFAppState().idViewProfile,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitRing(
                                          color: Color(0xFF5E5E61),
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final pageViewGalleryResponse =
                                      snapshot.data!;
                                  _model.debugBackendQueries[
                                          'GalleryCall_statusCode_PageView_vooioeox'] =
                                      debugSerializeParam(
                                    pageViewGalleryResponse.statusCode,
                                    ParamType.int,
                                    link:
                                        'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                    name: 'int',
                                    nullable: false,
                                  );
                                  _model.debugBackendQueries[
                                          'GalleryCall_responseBody_PageView_vooioeox'] =
                                      debugSerializeParam(
                                    pageViewGalleryResponse.bodyText,
                                    ParamType.String,
                                    link:
                                        'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                    name: 'String',
                                    nullable: false,
                                  );
                                  debugLogWidgetClass(_model);

                                  return Builder(
                                    builder: (context) {
                                      final expandedImage =
                                          pageViewGalleryResponse.jsonBody
                                              .toList();
                                      _model.debugGeneratorVariables[
                                              'expandedImage${expandedImage.length > 100 ? ' (first 100)' : ''}'] =
                                          debugSerializeParam(
                                        expandedImage.take(100),
                                        ParamType.JSON,
                                        link:
                                            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
                                        name: 'dynamic',
                                        nullable: false,
                                      );
                                      debugLogWidgetClass(_model);

                                      return Container(
                                        width: 333.0,
                                        height: 416.0,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 40.0),
                                              child: PageView.builder(
                                                controller: _model
                                                        .pageViewController ??=
                                                    PageController(
                                                        initialPage: max(
                                                            0,
                                                            min(
                                                                valueOrDefault<
                                                                    int>(
                                                                  _model
                                                                      .selectedpage,
                                                                  0,
                                                                ),
                                                                expandedImage
                                                                        .length -
                                                                    1)))
                                                      ..addListener(() {
                                                        debugLogWidgetClass(
                                                            _model.rootModel);
                                                      }),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: expandedImage.length,
                                                itemBuilder: (context,
                                                    expandedImageIndex) {
                                                  final expandedImageItem =
                                                      expandedImage[
                                                          expandedImageIndex];
                                                  return InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image:
                                                                Image.network(
                                                              GallerylistStruct
                                                                      .maybeFromMap(
                                                                          expandedImageItem)!
                                                                  .imageUrl,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: GallerylistStruct
                                                                    .maybeFromMap(
                                                                        expandedImageItem)!
                                                                .imageUrl,
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: GallerylistStruct
                                                              .maybeFromMap(
                                                                  expandedImageItem)!
                                                          .imageUrl,
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          GallerylistStruct
                                                                  .maybeFromMap(
                                                                      expandedImageItem)!
                                                              .imageUrl,
                                                          width: 200.0,
                                                          height: 300.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 0.0, 16.0),
                                                child: smooth_page_indicator
                                                    .SmoothPageIndicator(
                                                  controller: _model
                                                          .pageViewController ??=
                                                      PageController(
                                                          initialPage: max(
                                                              0,
                                                              min(
                                                                  valueOrDefault<
                                                                      int>(
                                                                    _model
                                                                        .selectedpage,
                                                                    0,
                                                                  ),
                                                                  expandedImage
                                                                          .length -
                                                                      1)))
                                                        ..addListener(() {
                                                          debugLogWidgetClass(
                                                              _model.rootModel);
                                                        }),
                                                  count: expandedImage.length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) async {
                                                    await _model
                                                        .pageViewController!
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                    setState(() {});
                                                  },
                                                  effect: smooth_page_indicator
                                                      .ExpandingDotsEffect(
                                                    expansionFactor: 3.0,
                                                    spacing: 8.0,
                                                    radius: 16.0,
                                                    dotWidth: 8.0,
                                                    dotHeight: 8.0,
                                                    dotColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .accent1,
                                                    activeDotColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (_model.visibleava == true)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().visibilityPageView = 0;
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x6E535353),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 25.0, 100.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.visibleava = !_model.visibleava;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.close_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                            Hero(
                              tag: TrainerProfileSchemaStruct.maybeFromMap(
                                      coachProfileTrainerProfileResponse
                                          .jsonBody)!
                                  .avatar,
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  TrainerProfileSchemaStruct.maybeFromMap(
                                          coachProfileTrainerProfileResponse
                                              .jsonBody)!
                                      .avatar,
                                  width: 313.0,
                                  height: 416.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
