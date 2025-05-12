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
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'clubs_profile_model.dart';
export 'clubs_profile_model.dart';

class ClubsProfileWidget extends StatefulWidget {
  const ClubsProfileWidget({
    super.key,
    this.addModelFn,
    required this.clubid,
  });

  final String? clubid;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<ClubsProfileWidget> createState() => _ClubsProfileWidgetState();
}

class _ClubsProfileWidgetState extends State<ClubsProfileWidget>
    with RouteAware {
  late ClubsProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClubsProfileModel());
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
        final clubsProfileTrainerProfileResponse = snapshot.data!;
        _model.debugBackendQueries[
                'TrainerProfileCall_statusCode_Scaffold_dnvnuuuz'] =
            debugSerializeParam(
          clubsProfileTrainerProfileResponse.statusCode,
          ParamType.int,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
          name: 'int',
          nullable: false,
        );
        _model.debugBackendQueries[
                'TrainerProfileCall_responseBody_Scaffold_dnvnuuuz'] =
            debugSerializeParam(
          clubsProfileTrainerProfileResponse.bodyText,
          ParamType.String,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
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
                Stack(
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
                                  width: MediaQuery.sizeOf(context).width * 2.0,
                                  constraints: BoxConstraints(
                                    minWidth: 363.0,
                                    maxWidth: 363.0,
                                  ),
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
                                    mainAxisSize: MainAxisSize.max,
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
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 0.0, 0.0),
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
                                                    context
                                                        .pushNamed('HomePage');
                                                  },
                                                  child: Container(
                                                    width: 39.0,
                                                    height: 39.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
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
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
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
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 15.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 120.0,
                                                  height: 120.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                                      FFAppState()
                                                          .visibleavatar = '1';
                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      width: 120.0,
                                                      height: 120.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          TrainerProfileSchemaStruct
                                                                  .maybeFromMap(
                                                                      clubsProfileTrainerProfileResponse
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
                                                          TrainerProfileSchemaStruct
                                                                  .maybeFromMap(
                                                                      clubsProfileTrainerProfileResponse
                                                                          .jsonBody)
                                                              ?.name,
                                                          'name',
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(21.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Рейтинг: ${valueOrDefault<String>(
                                                        TrainerProfileSchemaStruct
                                                                .maybeFromMap(
                                                                    clubsProfileTrainerProfileResponse
                                                                        .jsonBody)
                                                            ?.rating
                                                            ?.toString(),
                                                        'rating',
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
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        10.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        10.0),
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                'Клуб',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    9.0,
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
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topRight: Radius
                                                                  .circular(
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
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
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
                                                    clubsProfileTrainerProfileResponse
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            35.0, 15.0, 0.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Галерея',
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
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child:
                                                FutureBuilder<ApiCallResponse>(
                                              future: GalleryCall.call(
                                                clientId: TrainerProfileSchemaStruct
                                                        .maybeFromMap(
                                                            clubsProfileTrainerProfileResponse
                                                                .jsonBody)
                                                    ?.id,
                                              ),
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
                                                final listViewGalleryResponse =
                                                    snapshot.data!;
                                                _model.debugBackendQueries[
                                                        'GalleryCall_statusCode_ListView_li299yim'] =
                                                    debugSerializeParam(
                                                  listViewGalleryResponse
                                                      .statusCode,
                                                  ParamType.int,
                                                  link:
                                                      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
                                                  name: 'int',
                                                  nullable: false,
                                                );
                                                _model.debugBackendQueries[
                                                        'GalleryCall_responseBody_ListView_li299yim'] =
                                                    debugSerializeParam(
                                                  listViewGalleryResponse
                                                      .bodyText,
                                                  ParamType.String,
                                                  link:
                                                      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
                                                  name: 'String',
                                                  nullable: false,
                                                );
                                                debugLogWidgetClass(_model);

                                                return Builder(
                                                  builder: (context) {
                                                    final gallery = (listViewGalleryResponse
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
                                                          'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
                                                      name: 'gallerylist',
                                                      nullable: false,
                                                    );
                                                    debugLogWidgetClass(_model);

                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      itemCount: gallery.length,
                                                      itemBuilder: (context,
                                                          galleryIndex) {
                                                        final galleryItem =
                                                            gallery[
                                                                galleryIndex];
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
                                                            FFAppState()
                                                                .visibilityPageView = 1;
                                                            setState(() {});
                                                            await _model
                                                                .pageViewController
                                                                ?.animateToPage(
                                                              galleryIndex,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      500),
                                                              curve:
                                                                  Curves.ease,
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: valueOrDefault<
                                                                String>(
                                                              galleryItem
                                                                  .imageUrl,
                                                              'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg' +
                                                                  '$galleryIndex',
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
                                                                  galleryItem
                                                                      .imageUrl,
                                                                  'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                                ),
                                                                width: 135.0,
                                                                height: 168.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
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
                              child: FFButtonWidget(
                                onPressed: () async {
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
                                        'UserNames': functions.listOfNamechats(
                                            FFAppState().profiledata.name,
                                            valueOrDefault<String>(
                                              TrainerProfileSchemaStruct
                                                      .maybeFromMap(
                                                          clubsProfileTrainerProfileResponse
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
                                        'UserNames': functions.listOfNamechats(
                                            FFAppState().profiledata.name,
                                            valueOrDefault<String>(
                                              TrainerProfileSchemaStruct
                                                      .maybeFromMap(
                                                          clubsProfileTrainerProfileResponse
                                                              .jsonBody)
                                                  ?.name,
                                              'name',
                                            )),
                                      },
                                    ),
                                  }, chatsRecordReference);

                                  setState(() {});
                                },
                                text: 'Записаться',
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
                    if (FFAppState().visibilityPageView == 1)
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
                                        FFAppState().visibilityPageView = 0;
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
                                              'GalleryCall_statusCode_PageView_03s9xnw6'] =
                                          debugSerializeParam(
                                        pageViewGalleryResponse.statusCode,
                                        ParamType.int,
                                        link:
                                            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
                                        name: 'int',
                                        nullable: false,
                                      );
                                      _model.debugBackendQueries[
                                              'GalleryCall_responseBody_PageView_03s9xnw6'] =
                                          debugSerializeParam(
                                        pageViewGalleryResponse.bodyText,
                                        ParamType.String,
                                        link:
                                            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
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
                                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
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
                                                                image: Image
                                                                    .network(
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
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
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
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                0.0, 16.0),
                                                    child: smooth_page_indicator
                                                        .SmoothPageIndicator(
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
                                                      count:
                                                          expandedImage.length,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      onDotClicked: (i) async {
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
                    if (FFAppState().visibleavatar == '1')
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
                                        FFAppState().visibleavatar = '0';
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
                                          clubsProfileTrainerProfileResponse
                                              .jsonBody)!
                                      .avatar,
                                  transitionOnUserGestures: true,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      TrainerProfileSchemaStruct.maybeFromMap(
                                              clubsProfileTrainerProfileResponse
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
              ],
            ),
          ),
        );
      },
    );
  }
}
