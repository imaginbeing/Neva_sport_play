import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> with RouteAware {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());
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
      future: (_model.apiRequestCompleter3 ??= Completer<ApiCallResponse>()
            ..complete(ProfileDataCall.call(
              authToken: FFAppState().token,
            )))
          .future,
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
        final profileProfileDataResponse = snapshot.data!;
        _model.debugBackendQueries[
                'ProfileDataCall_statusCode_Scaffold_ui2kieeq'] =
            debugSerializeParam(
          profileProfileDataResponse.statusCode,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'ProfileDataCall_responseBody_Scaffold_ui2kieeq'] =
            debugSerializeParam(
          profileProfileDataResponse.bodyText,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 0.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            setState(() => _model.apiRequestCompleter3 = null);
                            await _model.waitForApiRequestCompleted3();

                            setState(() {});
                          },
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 363.0,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 5.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                0.0, 0.0),
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
                                                      child: Container(
                                                        width: 39.0,
                                                        height: 39.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.safePop();
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/Back.svg',
                                                                width: 300.0,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
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
                                                      AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                15.0, 0.0),
                                                    child: Text(
                                                      'Играет с ${ProfileDataCall.createddate(
                                                        profileProfileDataResponse
                                                            .jsonBody,
                                                      )}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
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
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 15.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 135.0,
                                                    height: 135.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
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
                                                        _model.visibleavatar =
                                                            !_model
                                                                .visibleavatar;
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        width: 120.0,
                                                        height: 120.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            ProfileDataCall
                                                                .avatar(
                                                              profileProfileDataResponse
                                                                  .jsonBody,
                                                            ),
                                                            'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                          ),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  21.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          ProfileDataCall.name(
                                                            profileProfileDataResponse
                                                                .jsonBody,
                                                          ),
                                                          'User',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Montserrat'),
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (valueOrDefault<bool>(
                                                    ProfileDataCall.type(
                                                          profileProfileDataResponse
                                                              .jsonBody,
                                                        ) ==
                                                        1,
                                                    false,
                                                  ))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  21.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Рейтинг: ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                  fontSize:
                                                                      10.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          'Montserrat'),
                                                                ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(21.0,
                                                                10.0, 0.0, 0.0),
                                                    child: Text(
                                                      '15 Турниров',
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(21.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Стаж ${() {
                                                        if (ProfileDataCall
                                                                .expirience(
                                                              profileProfileDataResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            1) {
                                                          return 'менее 1 года';
                                                        } else if (ProfileDataCall
                                                                .expirience(
                                                              profileProfileDataResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            2) {
                                                          return 'от 1 до 3 лет';
                                                        } else if (ProfileDataCall
                                                                .expirience(
                                                              profileProfileDataResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            3) {
                                                          return 'от 3 до 5 лет';
                                                        } else if (ProfileDataCall
                                                                .expirience(
                                                              profileProfileDataResponse
                                                                  .jsonBody,
                                                            ) ==
                                                            4) {
                                                          return 'более 5 лет';
                                                        } else {
                                                          return 'отсутствует';
                                                        }
                                                      }()}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                            fontSize: 10.0,
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
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(21.0, 9.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 155.0,
                                                      height: 45.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                          'Игрок',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          9.0, 9.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 155.0,
                                                    height: 45.0,
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
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
                                                          context.pushNamed(
                                                              'ProfileEdit');
                                                        },
                                                        child: Text(
                                                          'Редактировать профиль',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
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
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 15.0, 15.0, 10.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                ProfileDataCall.description(
                                                  profileProfileDataResponse
                                                      .jsonBody,
                                                ),
                                                'Описание',
                                              ),
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    35.0, 15.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Галерея',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  15.0,
                                                                  0.0),
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
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            setState(() => _model
                                                                    .isDataUploading =
                                                                true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            try {
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                          ))
                                                                      .toList();
                                                            } finally {
                                                              _model.isDataUploading =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                              setState(() {
                                                                _model.uploadedLocalFile =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                              });
                                                            } else {
                                                              setState(() {});
                                                              return;
                                                            }
                                                          }

                                                          _model.gallery1 = _model
                                                              .uploadedLocalFile;
                                                          setState(() {});
                                                          _model.apiResultvza =
                                                              await GallerysendphotoCall
                                                                  .call(
                                                            photo:
                                                                _model.gallery1,
                                                            authToken:
                                                                FFAppState()
                                                                    .token,
                                                          );

                                                          if ((_model
                                                                  .apiResultvza
                                                                  ?.succeeded ??
                                                              true)) {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Фото успешно загружено',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                              ),
                                                            );
                                                            setState(() => _model
                                                                    .apiRequestCompleter1 =
                                                                null);
                                                            setState(() => _model
                                                                    .apiRequestCompleter2 =
                                                                null);
                                                          } else {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Фото неудалось загрузить',
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4000),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                              ),
                                                            );
                                                          }

                                                          setState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future: (_model
                                                          .apiRequestCompleter1 ??=
                                                      Completer<
                                                          ApiCallResponse>()
                                                        ..complete(
                                                            GalleryCall.call(
                                                          clientId: FFAppState()
                                                              .profiledata
                                                              .id,
                                                          authToken:
                                                              FFAppState()
                                                                  .token,
                                                        )))
                                                  .future,
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitRing(
                                                        color:
                                                            Color(0xFF5E5E61),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final containerGalleryResponse =
                                                    snapshot.data!;
                                                _model.debugBackendQueries[
                                                        'GalleryCall_statusCode_Container_pw85qyk1'] =
                                                    debugSerializeParam(
                                                  containerGalleryResponse
                                                      .statusCode,
                                                  ParamType.int,
                                                  link:
                                                      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
                                                  name: 'int',
                                                  nullable: false,
                                                );
                                                _model.debugBackendQueries[
                                                        'GalleryCall_responseBody_Container_pw85qyk1'] =
                                                    debugSerializeParam(
                                                  containerGalleryResponse
                                                      .bodyText,
                                                  ParamType.String,
                                                  link:
                                                      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
                                                  name: 'String',
                                                  nullable: false,
                                                );
                                                debugLogWidgetClass(_model);

                                                return Container(
                                                  width: 336.0,
                                                  height: 169.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Builder(
                                                    builder: (context) {
                                                      if (containerGalleryResponse
                                                                  .bodyText !=
                                                              null &&
                                                          containerGalleryResponse
                                                                  .bodyText !=
                                                              '') {
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final gallery = (containerGalleryResponse
                                                                          .jsonBody
                                                                          .toList()
                                                                          .map<GallerylistStruct?>(
                                                                              GallerylistStruct.maybeFromMap)
                                                                          .toList() as Iterable<GallerylistStruct?>)
                                                                      .withoutNulls
                                                                      ?.toList() ??
                                                                  [];
                                                              _model.debugGeneratorVariables[
                                                                      'gallery${gallery.length > 100 ? ' (first 100)' : ''}'] =
                                                                  debugSerializeParam(
                                                                gallery
                                                                    .take(100),
                                                                ParamType
                                                                    .DataStruct,
                                                                isList: true,
                                                                link:
                                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
                                                                name:
                                                                    'gallerylist',
                                                                nullable: false,
                                                              );
                                                              debugLogWidgetClass(
                                                                  _model);

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                itemCount:
                                                                    gallery
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        galleryIndex) {
                                                                  final galleryItem =
                                                                      gallery[
                                                                          galleryIndex];
                                                                  return InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                          .visibilityPageView = 2;
                                                                      setState(
                                                                          () {});
                                                                      FFAppState()
                                                                              .indexviewphoto =
                                                                          galleryIndex;
                                                                      await _model
                                                                          .pageViewController
                                                                          ?.animateToPage(
                                                                        FFAppState()
                                                                            .indexviewphoto,
                                                                        duration:
                                                                            Duration(milliseconds: 500),
                                                                        curve: Curves
                                                                            .ease,
                                                                      );
                                                                    },
                                                                    onLongPress:
                                                                        () async {
                                                                      FFAppState()
                                                                              .indexpageviewfordelete =
                                                                          galleryItem
                                                                              .id;
                                                                      var confirmDialogResponse = await showDialog<
                                                                              bool>(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('Удалить фотографии'),
                                                                                content: Text('Вы уверены, что хотите удалить фотографию?'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: Text('Нет'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: Text('Да'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                      if (confirmDialogResponse) {
                                                                        _model.apiResult00d =
                                                                            await GallerydeleteCall.call(
                                                                          authToken:
                                                                              FFAppState().token,
                                                                          galleryID:
                                                                              FFAppState().indexpageviewfordelete,
                                                                        );

                                                                        if ((_model.apiResult00d?.succeeded ??
                                                                            true)) {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Фото удалено',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                          );
                                                                          setState(() =>
                                                                              _model.apiRequestCompleter1 = null);
                                                                          setState(() =>
                                                                              _model.apiRequestCompleter2 = null);
                                                                        } else {
                                                                          ScaffoldMessenger.of(context)
                                                                              .showSnackBar(
                                                                            SnackBar(
                                                                              content: Text(
                                                                                'Возникла ошибка',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Montserrat',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                              ),
                                                                              duration: Duration(milliseconds: 4000),
                                                                              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                          );
                                                                          setState(() =>
                                                                              _model.apiRequestCompleter1 = null);
                                                                          setState(() =>
                                                                              _model.apiRequestCompleter2 = null);
                                                                        }
                                                                      }

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          galleryItem
                                                                              .imageUrl,
                                                                          'ps://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                                        ),
                                                                        width:
                                                                            135.0,
                                                                        height:
                                                                            169.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      } else {
                                                        return Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            'У вас нет изображений',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                        );
                                                      }
                                                    },
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: Container(
                                    width: 363.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Турниры',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Montserrat'),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Container(
                                    width: 363.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Мероприятия',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Montserrat'),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (FFAppState().visibilityPageView == 2)
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 100.0, 20.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().visibilityPageView =
                                                  0;
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.close_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: (_model.apiRequestCompleter2 ??=
                                              Completer<ApiCallResponse>()
                                                ..complete(GalleryCall.call(
                                                  clientId: FFAppState()
                                                      .profiledata
                                                      .id,
                                                )))
                                          .future,
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
                                                'GalleryCall_statusCode_PageView_niuegars'] =
                                            debugSerializeParam(
                                          pageViewGalleryResponse.statusCode,
                                          ParamType.int,
                                          link:
                                              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
                                          name: 'int',
                                          nullable: false,
                                        );
                                        _model.debugBackendQueries[
                                                'GalleryCall_responseBody_PageView_niuegars'] =
                                            debugSerializeParam(
                                          pageViewGalleryResponse.bodyText,
                                          ParamType.String,
                                          link:
                                              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
                                          name: 'String',
                                          nullable: false,
                                        );
                                        debugLogWidgetClass(_model);

                                        return Builder(
                                          builder: (context) {
                                            final expandedImage = (pageViewGalleryResponse
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
                                                    'expandedImage${expandedImage.length > 100 ? ' (first 100)' : ''}'] =
                                                debugSerializeParam(
                                              expandedImage.take(100),
                                              ParamType.DataStruct,
                                              isList: true,
                                              link:
                                                  'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
                                              name: 'gallerylist',
                                              nullable: false,
                                            );
                                            debugLogWidgetClass(_model);

                                            return Container(
                                              width: 333.0,
                                              height: 416.0,
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 40.0),
                                                    child: PageView.builder(
                                                      controller: _model
                                                              .pageViewController ??=
                                                          PageController(
                                                              initialPage: max(
                                                                  0,
                                                                  min(
                                                                      0,
                                                                      expandedImage
                                                                              .length -
                                                                          1)))
                                                            ..addListener(() {
                                                              debugLogWidgetClass(
                                                                  _model
                                                                      .rootModel);
                                                            }),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount:
                                                          expandedImage.length,
                                                      itemBuilder: (context,
                                                          expandedImageIndex) {
                                                        final expandedImageItem =
                                                            expandedImage[
                                                                expandedImageIndex];
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await Navigator
                                                                .push(
                                                              context,
                                                              PageTransition(
                                                                type:
                                                                    PageTransitionType
                                                                        .fade,
                                                                child:
                                                                    FlutterFlowExpandedImageView(
                                                                  image: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      expandedImageItem
                                                                          .imageUrl,
                                                                      'https://nedgeo.ru/wp-content/uploads/2021/06/dummyimage.jpg',
                                                                    ),
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                  allowRotation:
                                                                      false,
                                                                  tag: valueOrDefault<
                                                                      String>(
                                                                    expandedImageItem
                                                                        .imageUrl,
                                                                    'https://nedgeo.ru/wp-content/uploads/2021/06/dummyimage.jpg' +
                                                                        '$expandedImageIndex',
                                                                  ),
                                                                  useHeroAnimation:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: valueOrDefault<
                                                                String>(
                                                              expandedImageItem
                                                                  .imageUrl,
                                                              'https://nedgeo.ru/wp-content/uploads/2021/06/dummyimage.jpg' +
                                                                  '$expandedImageIndex',
                                                            ),
                                                            transitionOnUserGestures:
                                                                true,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  expandedImageItem
                                                                      .imageUrl,
                                                                  'https://nedgeo.ru/wp-content/uploads/2021/06/dummyimage.jpg',
                                                                ),
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.4,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.4,
                                                                fit: BoxFit
                                                                    .scaleDown,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: smooth_page_indicator
                                                          .SmoothPageIndicator(
                                                        controller: _model
                                                                .pageViewController ??=
                                                            PageController(
                                                                initialPage: max(
                                                                    0,
                                                                    min(
                                                                        0,
                                                                        expandedImage.length -
                                                                            1)))
                                                              ..addListener(() {
                                                                debugLogWidgetClass(
                                                                    _model
                                                                        .rootModel);
                                                              }),
                                                        count: expandedImage
                                                            .length,
                                                        axisDirection:
                                                            Axis.horizontal,
                                                        onDotClicked:
                                                            (i) async {
                                                          await _model
                                                              .pageViewController!
                                                              .animateToPage(
                                                            i,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    500),
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
                                                              PaintingStyle
                                                                  .fill,
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
                    ],
                  ),
                ),
                if (_model.visibleavatar)
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
                                    _model.visibleavatar =
                                        !_model.visibleavatar;
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    TrainerProfileSchemaStruct.maybeFromMap(
                                            profileProfileDataResponse.jsonBody)
                                        ?.avatar,
                                    'https://nedgeo.ru/wp-content/uploads/2021/06/dummyimage.jpg',
                                  ),
                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                  height: 490.0,
                                  fit: BoxFit.contain,
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
