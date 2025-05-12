import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tinder_model.dart';
export 'tinder_model.dart';

class TinderWidget extends StatefulWidget {
  const TinderWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<TinderWidget> createState() => _TinderWidgetState();
}

class _TinderWidgetState extends State<TinderWidget>
    with TickerProviderStateMixin, RouteAware {
  late TinderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TinderModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF6F6F6),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('HomePage');
                        },
                        child: Container(
                          width: 39.0,
                          height: 39.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('HomePage');
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 0.0, 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/sreen_logo.svg',
                          width: 115.0,
                          height: 53.0,
                          fit: BoxFit.contain,
                          alignment: Alignment(0.0, 0.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter ??=
                            Completer<ApiCallResponse>()
                              ..complete(TinderCall.call(
                                authToken: FFAppState().token,
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
                      final swipeableStackTinderResponse = snapshot.data!;
                      _model.debugBackendQueries[
                              'TinderCall_statusCode_SwipeableStack_w2rc2dxs'] =
                          debugSerializeParam(
                        swipeableStackTinderResponse.statusCode,
                        ParamType.int,
                        link:
                            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
                        name: 'int',
                        nullable: false,
                      );
                      _model.debugBackendQueries[
                              'TinderCall_responseBody_SwipeableStack_w2rc2dxs'] =
                          debugSerializeParam(
                        swipeableStackTinderResponse.bodyText,
                        ParamType.String,
                        link:
                            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
                        name: 'String',
                        nullable: false,
                      );
                      debugLogWidgetClass(_model);

                      return Builder(
                        builder: (context) {
                          final tinderView =
                              swipeableStackTinderResponse.jsonBody.toList();
                          _model.debugGeneratorVariables[
                                  'tinderView${tinderView.length > 100 ? ' (first 100)' : ''}'] =
                              debugSerializeParam(
                            tinderView.take(100),
                            ParamType.JSON,
                            link:
                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
                            name: 'dynamic',
                            nullable: false,
                          );
                          debugLogWidgetClass(_model);

                          return FlutterFlowSwipeableStack(
                            onSwipeFn: (index) {},
                            onLeftSwipe: (index) async {
                              final tinderViewItem = tinderView[index];
                              _model.apiResult1g7 =
                                  await TinderDislikeCall.call(
                                uid: getJsonField(
                                  tinderViewItem,
                                  r'''$.clientId''',
                                ).toString(),
                                authToken: FFAppState().token,
                              );

                              if ((_model.apiResult1g7?.succeeded ?? true)) {
                                setState(
                                    () => _model.apiRequestCompleter = null);
                                await _model.waitForApiRequestCompleted();
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Ошибка!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }

                              setState(() {});
                            },
                            onRightSwipe: (index) async {
                              final tinderViewItem = tinderView[index];
                              _model.apiResultsqn = await TinderLikeCall.call(
                                uid: getJsonField(
                                  tinderViewItem,
                                  r'''$.clientId''',
                                ).toString(),
                                authToken: FFAppState().token,
                              );

                              if (getJsonField(
                                (_model.apiResultsqn?.jsonBody ?? ''),
                                r'''$.match''',
                              )) {
                                FFAppState().currentChat = FFAppState().Idmatch;
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation'] !=
                                    null) {
                                  await animationsMap[
                                          'containerOnActionTriggerAnimation']!
                                      .controller
                                      .forward(from: 0.0);
                                }
                                FFAppState().Idmatch = getJsonField(
                                  tinderViewItem,
                                  r'''$.clientId''',
                                ).toString();
                                setState(() {});

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
                                          tinderViewItem),
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
                                          tinderViewItem),
                                    },
                                  ),
                                }, chatsRecordReference);

                                context.pushNamed(
                                  'ChatPage',
                                  queryParameters: {
                                    'recieve': serializeParam(
                                      _model.apiResultzk0?.reference,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                );
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Мэтч!'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }

                              setState(() {});
                            },
                            onUpSwipe: (index) {},
                            onDownSwipe: (index) {},
                            itemBuilder: (context, tinderViewIndex) {
                              final tinderViewItem =
                                  tinderView[tinderViewIndex];
                              return Container(
                                width: 347.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(24.0),
                                    bottomRight: Radius.circular(24.0),
                                    topLeft: Radius.circular(24.0),
                                    topRight: Radius.circular(24.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(24.0),
                                          bottomRight: Radius.circular(24.0),
                                          topLeft: Radius.circular(24.0),
                                          topRight: Radius.circular(24.0),
                                        ),
                                        child: SvgPicture.network(
                                          'https://s3.timeweb.cloud/260dc2ca-neva-sport-play/nouser.svg',
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Container(
                                        width: 347.0,
                                        height: 147.0,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              Color(0x00FFFFFF),
                                              Colors.black
                                            ],
                                            stops: [0.1, 1.0],
                                            begin:
                                                AlignmentDirectional(0.0, -1.0),
                                            end: AlignmentDirectional(0, 1.0),
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(20.0),
                                            topRight: Radius.circular(20.0),
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Column(
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
                                                            .fromSTEB(10.0,
                                                                10.0, 0.0, 0.0),
                                                    child: Text(
                                                      '${getJsonField(
                                                        tinderViewItem,
                                                        r'''$.name''',
                                                      ).toString()},${getJsonField(
                                                        tinderViewItem,
                                                        r'''$.age''',
                                                      ).toString()}',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 28.0,
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
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Живёт в ${getJsonField(
                                                        tinderViewItem,
                                                        r'''$.city''',
                                                      ).toString()}',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
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
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.01, -0.91),
                                      child: Container(
                                        width: 86.0,
                                        height: 41.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'Мэтч!',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Montserrat'),
                                                ),
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation']!,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: tinderView.length,
                            controller: _model.swipeableStackController,
                            loop: false,
                            cardDisplayCount: 3,
                            scale: 0.9,
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
    );
  }
}
