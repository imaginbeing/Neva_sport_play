import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
    this.addModelFn,
    this.back,
  });

  final bool? back;
  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget>
    with TickerProviderStateMixin, RouteAware {
  late CalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.sessions = await SessionsGroup.catalogCall.call(
        authToken: FFAppState().token,
      );

      _model.nametrainerlist = await TrainerProfileCall.call(
        authToken: FFAppState().token,
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )
      ..addListener(() => setState(() {}))
      ..addListener(() {
        debugLogWidgetClass(_model.rootModel);
      });
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

    return StreamBuilder<List<ChatsRecord>>(
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
        List<ChatsRecord> calendarChatsRecordList = snapshot.data!;

        _model.debugBackendQueries[
                'calendarChatsRecordList_Scaffold_t1df663t${calendarChatsRecordList.length > 100 ? ' (first 100)' : ''}'] =
            debugSerializeParam(
          calendarChatsRecordList.take(100),
          ParamType.Document,
          isList: true,
          link:
              'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
          name: 'chats',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF6F6F6),
            body: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 35.0, 15.0, 0.0),
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() => _model.apiRequestCompleter2 = null);
                  await _model.waitForApiRequestCompleted2();
                  setState(() => _model.apiRequestCompleter1 = null);
                  await _model.waitForApiRequestCompleted1();
                  setState(() => _model.apiRequestCompleter3 = null);
                  await _model.waitForApiRequestCompleted3();
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(
                                        'Активные записи',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey(
                                                          'Montserrat'),
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Text(
                                        dateTimeFormat(
                                            "dd.MM", getCurrentTimestamp),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                        child: Container(
                          width: 353.0,
                          height: 593.0,
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
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 0.0, 0.0),
                                  child: Text(
                                    'Выберите день',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey('Montserrat'),
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: 72.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: _model.yellow1 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.yellow1) {
                                              _model.yellow1 = !_model.yellow1;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            } else {
                                              _model.yellow1 = true;
                                              setState(() {});
                                              _model.yellow2 = false;
                                              _model.yellow3 = false;
                                              _model.yellow4 = false;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            }
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      functions.currentdate(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
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
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions.nextDay(),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: 72.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: _model.yellow2 == true
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.yellow2) {
                                              _model.yellow2 = !_model.yellow2;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            } else {
                                              _model.yellow2 = !_model.yellow2;
                                              setState(() {});
                                              _model.yellow3 = false;
                                              _model.yellow4 = false;
                                              _model.yellow1 = false;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            }
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      functions.nextDate1(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
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
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions.nextday2(),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: 72.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: _model.yellow3
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.yellow3) {
                                              _model.yellow3 = !_model.yellow3;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            } else {
                                              _model.yellow3 = !_model.yellow3;
                                              setState(() {});
                                              _model.yellow2 = false;
                                              _model.yellow4 = false;
                                              _model.yellow1 = false;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            }
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      functions.nextDate2(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
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
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions.nextday3(),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 15.0, 0.0),
                                      child: Container(
                                        width: 72.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: _model.yellow4
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.yellow4) {
                                              _model.yellow4 = !_model.yellow4;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            } else {
                                              _model.yellow1 = false;
                                              _model.yellow2 = false;
                                              _model.yellow3 = false;
                                              setState(() {});
                                              final _datePickedDate =
                                                  await showDatePicker(
                                                context: context,
                                                initialDate:
                                                    getCurrentTimestamp,
                                                firstDate: getCurrentTimestamp,
                                                lastDate: DateTime(2050),
                                                builder: (context, child) {
                                                  return wrapInMaterialDatePickerTheme(
                                                    context,
                                                    child!,
                                                    headerBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    headerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    headerTextStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineLargeFamily,
                                                              fontSize: 32.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLargeFamily),
                                                            ),
                                                    pickerBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    pickerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    selectedDateTimeBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    selectedDateTimeForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .info,
                                                    actionButtonForegroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    iconSize: 24.0,
                                                  );
                                                },
                                              );

                                              if (_datePickedDate != null) {
                                                safeSetState(() {
                                                  _model.datePicked = DateTime(
                                                    _datePickedDate.year,
                                                    _datePickedDate.month,
                                                    _datePickedDate.day,
                                                  );
                                                });
                                              }
                                              _model.yellow4 = !_model.yellow4;
                                              setState(() {});
                                              setState(() => _model
                                                  .apiRequestCompleter2 = null);
                                              await _model
                                                  .waitForApiRequestCompleted2();
                                            }
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Text(
                                                    'Другая',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 12.0,
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
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'дата',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            content: Text(
                                                (_model.sessions?.jsonBody ??
                                                        '')
                                                    .toString()),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      _model.yellow4 == true
                                          ? 'Тренировки на ${dateTimeFormat("dd.MM.yyyy", _model.datePicked)}'
                                          : 'Ваши тренировки',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey('Montserrat'),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        unselectedLabelColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily,
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMediumFamily),
                                            ),
                                        unselectedLabelStyle: TextStyle(),
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        padding: EdgeInsets.all(4.0),
                                        tabs: [
                                          Tab(
                                            text: 'Активные',
                                          ),
                                          Tab(
                                            text: 'Отмененные',
                                          ),
                                          Tab(
                                            text: 'Новые',
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [
                                            () async {},
                                            () async {},
                                            () async {}
                                          ][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        children: [
                                          FutureBuilder<ApiCallResponse>(
                                            future:
                                                (_model.apiRequestCompleter2 ??=
                                                        Completer<
                                                            ApiCallResponse>()
                                                          ..complete(
                                                              SessionsGroup
                                                                  .catalogCall
                                                                  .call(
                                                            authToken:
                                                                FFAppState()
                                                                    .token,
                                                            date: () {
                                                              if (_model
                                                                      .yellow1 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        0);
                                                              } else if (_model
                                                                      .yellow2 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        1);
                                                              } else if (_model
                                                                      .yellow3 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        2);
                                                              } else if (_model
                                                                      .yellow4 ==
                                                                  true) {
                                                                return dateTimeFormat(
                                                                    "dd.MM.yyyy",
                                                                    _model
                                                                        .datePicked);
                                                              } else {
                                                                return '0';
                                                              }
                                                            }(),
                                                            status: 1,
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
                                              final containerCatalogResponse =
                                                  snapshot.data!;
                                              _model.debugBackendQueries[
                                                      'SessionsGroup.catalogCall_statusCode_Container_78j96fcq'] =
                                                  debugSerializeParam(
                                                containerCatalogResponse
                                                    .statusCode,
                                                ParamType.int,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                name: 'int',
                                                nullable: false,
                                              );
                                              _model.debugBackendQueries[
                                                      'SessionsGroup.catalogCall_responseBody_Container_78j96fcq'] =
                                                  debugSerializeParam(
                                                containerCatalogResponse
                                                    .bodyText,
                                                ParamType.String,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                name: 'String',
                                                nullable: false,
                                              );
                                              debugLogWidgetClass(_model);

                                              return Container(
                                                width: double.infinity,
                                                height: 304.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    if (SessionSchemaStruct.maybeFromMap(
                                                                    containerCatalogResponse
                                                                        .jsonBody)
                                                                ?.data !=
                                                            null &&
                                                        (SessionSchemaStruct.maybeFromMap(
                                                                    containerCatalogResponse
                                                                        .jsonBody)
                                                                ?.data)!
                                                            .isNotEmpty) {
                                                      return Builder(
                                                        builder: (context) {
                                                          final generateList =
                                                              SessionSchemaStruct.maybeFromMap(
                                                                          containerCatalogResponse
                                                                              .jsonBody)
                                                                      ?.data
                                                                      ?.toList() ??
                                                                  [];
                                                          _model.debugGeneratorVariables[
                                                                  'generateList${generateList.length > 100 ? ' (first 100)' : ''}'] =
                                                              debugSerializeParam(
                                                            generateList
                                                                .take(100),
                                                            ParamType
                                                                .DataStruct,
                                                            isList: true,
                                                            link:
                                                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                            name:
                                                                'sessionScemadata',
                                                            nullable: false,
                                                          );
                                                          debugLogWidgetClass(
                                                              _model);

                                                          return RefreshIndicator(
                                                            key: Key(
                                                                'RefreshIndicator_gga6a6r0'),
                                                            onRefresh:
                                                                () async {
                                                              setState(() =>
                                                                  _model.apiRequestCompleter2 =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted2();
                                                            },
                                                            child: ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  generateList
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          5.0),
                                                              itemBuilder: (context,
                                                                  generateListIndex) {
                                                                final generateListItem =
                                                                    generateList[
                                                                        generateListIndex];
                                                                return Container(
                                                                  height: 156.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              10.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/Iconsession.svg',
                                                                                width: 35.0,
                                                                                height: 35.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          '${generateListItem.date} Тренировка',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.access_time_filled_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          generateListItem.time,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              generateListItem.place,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            342.0,
                                                                        height:
                                                                            54.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child: FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future:
                                                                              TrainerProfileCall.call(
                                                                            authToken:
                                                                                FFAppState().token,
                                                                            id: generateListItem.trainer,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final rowTrainerProfileResponse =
                                                                                snapshot.data!;
                                                                            _model.debugBackendQueries['TrainerProfileCall_statusCode_Row_euyyshb9'] =
                                                                                debugSerializeParam(
                                                                              rowTrainerProfileResponse.statusCode,
                                                                              ParamType.int,
                                                                              link: 'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                                              name: 'int',
                                                                              nullable: false,
                                                                            );
                                                                            _model.debugBackendQueries['TrainerProfileCall_responseBody_Row_euyyshb9'] =
                                                                                debugSerializeParam(
                                                                              rowTrainerProfileResponse.bodyText,
                                                                              ParamType.String,
                                                                              link: 'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                                              name: 'String',
                                                                              nullable: false,
                                                                            );
                                                                            debugLogWidgetClass(_model);

                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {},
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 35.0,
                                                                                      height: 35.0,
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          TrainerProfileSchemaStruct.maybeFromMap(rowTrainerProfileResponse.jsonBody)?.avatar,
                                                                                          'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                                                        ),
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            TrainerProfileSchemaStruct.maybeFromMap(rowTrainerProfileResponse.jsonBody)?.name,
                                                                                            '0',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  _model.apiResultk39Copy = await SessionsGroup.cancelCall.call(
                                                                                    authToken: FFAppState().token,
                                                                                    sessionID: generateListItem.id,
                                                                                  );

                                                                                  if ((_model.actionn?.succeeded ?? true) == true) {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Вы отменили тренировку',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                      ),
                                                                                    );
                                                                                    setState(() => _model.apiRequestCompleter2 = null);
                                                                                    await _model.waitForApiRequestCompleted2();
                                                                                    setState(() => _model.apiRequestCompleter1 = null);
                                                                                    await _model.waitForApiRequestCompleted1();
                                                                                    setState(() => _model.apiRequestCompleter3 = null);
                                                                                    await _model.waitForApiRequestCompleted3();
                                                                                  } else {
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Ошибка!',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                      ),
                                                                                    );
                                                                                  }

                                                                                  setState(() {});
                                                                                },
                                                                                text: 'Отменить',
                                                                                options: FFButtonOptions(
                                                                                  width: 120.0,
                                                                                  height: 30.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                        color: Colors.white,
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                      ),
                                                                                  elevation: 0.0,
                                                                                  borderSide: BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      return Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'У вас нет активных записей!',
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
                                          FutureBuilder<ApiCallResponse>(
                                            future:
                                                (_model.apiRequestCompleter1 ??=
                                                        Completer<
                                                            ApiCallResponse>()
                                                          ..complete(
                                                              SessionsGroup
                                                                  .catalogCall
                                                                  .call(
                                                            authToken:
                                                                FFAppState()
                                                                    .token,
                                                            date: () {
                                                              if (_model
                                                                      .yellow1 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        0);
                                                              } else if (_model
                                                                      .yellow2 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        1);
                                                              } else if (_model
                                                                      .yellow3 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        2);
                                                              } else if (_model
                                                                      .yellow4 ==
                                                                  true) {
                                                                return dateTimeFormat(
                                                                    "dd.MM.yyyy",
                                                                    _model
                                                                        .datePicked);
                                                              } else {
                                                                return '0';
                                                              }
                                                            }(),
                                                            status: 2,
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
                                              final containerCatalogResponse =
                                                  snapshot.data!;
                                              _model.debugBackendQueries[
                                                      'SessionsGroup.catalogCall_statusCode_Container_27hxw7t6'] =
                                                  debugSerializeParam(
                                                containerCatalogResponse
                                                    .statusCode,
                                                ParamType.int,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                name: 'int',
                                                nullable: false,
                                              );
                                              _model.debugBackendQueries[
                                                      'SessionsGroup.catalogCall_responseBody_Container_27hxw7t6'] =
                                                  debugSerializeParam(
                                                containerCatalogResponse
                                                    .bodyText,
                                                ParamType.String,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                name: 'String',
                                                nullable: false,
                                              );
                                              debugLogWidgetClass(_model);

                                              return Container(
                                                width: double.infinity,
                                                height: 304.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    if (SessionSchemaStruct.maybeFromMap(
                                                                    containerCatalogResponse
                                                                        .jsonBody)
                                                                ?.data !=
                                                            null &&
                                                        (SessionSchemaStruct.maybeFromMap(
                                                                    containerCatalogResponse
                                                                        .jsonBody)
                                                                ?.data)!
                                                            .isNotEmpty) {
                                                      return Builder(
                                                        builder: (context) {
                                                          final listsessions = SessionSchemaStruct
                                                                      .maybeFromMap(
                                                                          containerCatalogResponse
                                                                              .jsonBody)
                                                                  ?.data
                                                                  ?.sortedList(
                                                                      keyOf: (e) => e
                                                                          .date,
                                                                      desc:
                                                                          false)
                                                                  ?.toList() ??
                                                              [];
                                                          _model.debugGeneratorVariables[
                                                                  'listsessions${listsessions.length > 100 ? ' (first 100)' : ''}'] =
                                                              debugSerializeParam(
                                                            listsessions
                                                                .take(100),
                                                            ParamType
                                                                .DataStruct,
                                                            isList: true,
                                                            link:
                                                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                            name:
                                                                'sessionScemadata',
                                                            nullable: false,
                                                          );
                                                          debugLogWidgetClass(
                                                              _model);

                                                          return RefreshIndicator(
                                                            key: Key(
                                                                'RefreshIndicator_9dridxux'),
                                                            onRefresh:
                                                                () async {
                                                              setState(() =>
                                                                  _model.apiRequestCompleter1 =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted1();
                                                            },
                                                            child: ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listsessions
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          5.0),
                                                              itemBuilder: (context,
                                                                  listsessionsIndex) {
                                                                final listsessionsItem =
                                                                    listsessions[
                                                                        listsessionsIndex];
                                                                return Container(
                                                                  height: 156.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              10.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/Iconsession.svg',
                                                                                width: 35.0,
                                                                                height: 35.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          '${listsessionsItem.date} Тренировка',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.access_time_filled_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          listsessionsItem.time,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              listsessionsItem.place,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            342.0,
                                                                        height:
                                                                            54.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child: FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future:
                                                                              TrainerProfileCall.call(
                                                                            authToken:
                                                                                FFAppState().token,
                                                                            id: listsessionsItem.trainer,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final rowTrainerProfileResponse =
                                                                                snapshot.data!;
                                                                            _model.debugBackendQueries['TrainerProfileCall_statusCode_Row_1tjly6tn'] =
                                                                                debugSerializeParam(
                                                                              rowTrainerProfileResponse.statusCode,
                                                                              ParamType.int,
                                                                              link: 'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                                              name: 'int',
                                                                              nullable: false,
                                                                            );
                                                                            _model.debugBackendQueries['TrainerProfileCall_responseBody_Row_1tjly6tn'] =
                                                                                debugSerializeParam(
                                                                              rowTrainerProfileResponse.bodyText,
                                                                              ParamType.String,
                                                                              link: 'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                                              name: 'String',
                                                                              nullable: false,
                                                                            );
                                                                            debugLogWidgetClass(_model);

                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {},
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 35.0,
                                                                                      height: 35.0,
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          TrainerProfileSchemaStruct.maybeFromMap(rowTrainerProfileResponse.jsonBody)?.avatar,
                                                                                          'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                                                        ),
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            TrainerProfileSchemaStruct.maybeFromMap(rowTrainerProfileResponse.jsonBody)?.name,
                                                                                            '0',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      return Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'У вас нет активных записей!',
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
                                          FutureBuilder<ApiCallResponse>(
                                            future:
                                                (_model.apiRequestCompleter3 ??=
                                                        Completer<
                                                            ApiCallResponse>()
                                                          ..complete(
                                                              SessionsGroup
                                                                  .catalogCall
                                                                  .call(
                                                            authToken:
                                                                FFAppState()
                                                                    .token,
                                                            date: () {
                                                              if (_model
                                                                      .yellow1 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        0);
                                                              } else if (_model
                                                                      .yellow2 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        1);
                                                              } else if (_model
                                                                      .yellow3 ==
                                                                  true) {
                                                                return functions
                                                                    .universaldate(
                                                                        2);
                                                              } else if (_model
                                                                      .yellow4 ==
                                                                  true) {
                                                                return dateTimeFormat(
                                                                    "dd.MM.yyyy",
                                                                    _model
                                                                        .datePicked);
                                                              } else {
                                                                return '0';
                                                              }
                                                            }(),
                                                            status: 0,
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
                                              final containerCatalogResponse =
                                                  snapshot.data!;
                                              _model.debugBackendQueries[
                                                      'SessionsGroup.catalogCall_statusCode_Container_p28ybl2z'] =
                                                  debugSerializeParam(
                                                containerCatalogResponse
                                                    .statusCode,
                                                ParamType.int,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                name: 'int',
                                                nullable: false,
                                              );
                                              _model.debugBackendQueries[
                                                      'SessionsGroup.catalogCall_responseBody_Container_p28ybl2z'] =
                                                  debugSerializeParam(
                                                containerCatalogResponse
                                                    .bodyText,
                                                ParamType.String,
                                                link:
                                                    'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                name: 'String',
                                                nullable: false,
                                              );
                                              debugLogWidgetClass(_model);

                                              return Container(
                                                width: double.infinity,
                                                height: 304.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Builder(
                                                  builder: (context) {
                                                    if (SessionSchemaStruct.maybeFromMap(
                                                                    containerCatalogResponse
                                                                        .jsonBody)
                                                                ?.data !=
                                                            null &&
                                                        (SessionSchemaStruct.maybeFromMap(
                                                                    containerCatalogResponse
                                                                        .jsonBody)
                                                                ?.data)!
                                                            .isNotEmpty) {
                                                      return Builder(
                                                        builder: (context) {
                                                          final listsessions = SessionSchemaStruct
                                                                      .maybeFromMap(
                                                                          containerCatalogResponse
                                                                              .jsonBody)
                                                                  ?.data
                                                                  ?.sortedList(
                                                                      keyOf: (e) => e
                                                                          .date,
                                                                      desc:
                                                                          false)
                                                                  ?.toList() ??
                                                              [];
                                                          _model.debugGeneratorVariables[
                                                                  'listsessions${listsessions.length > 100 ? ' (first 100)' : ''}'] =
                                                              debugSerializeParam(
                                                            listsessions
                                                                .take(100),
                                                            ParamType
                                                                .DataStruct,
                                                            isList: true,
                                                            link:
                                                                'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                            name:
                                                                'sessionScemadata',
                                                            nullable: false,
                                                          );
                                                          debugLogWidgetClass(
                                                              _model);

                                                          return RefreshIndicator(
                                                            key: Key(
                                                                'RefreshIndicator_gz23ds64'),
                                                            onRefresh:
                                                                () async {
                                                              setState(() =>
                                                                  _model.apiRequestCompleter3 =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted3();
                                                            },
                                                            child: ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listsessions
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          5.0),
                                                              itemBuilder: (context,
                                                                  listsessionsIndex) {
                                                                final listsessionsItem =
                                                                    listsessions[
                                                                        listsessionsIndex];
                                                                return Container(
                                                                  height: 156.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              10.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/Iconsession.svg',
                                                                                width: 35.0,
                                                                                height: 35.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          '${listsessionsItem.date} Тренировка',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                            child: Icon(
                                                                                              Icons.access_time_filled_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              size: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          listsessionsItem.time,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                        Flexible(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Text(
                                                                                              listsessionsItem.place,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            342.0,
                                                                        height:
                                                                            54.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                        child: FutureBuilder<
                                                                            ApiCallResponse>(
                                                                          future:
                                                                              TrainerProfileCall.call(
                                                                            authToken:
                                                                                FFAppState().token,
                                                                            id: listsessionsItem.trainer,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final rowTrainerProfileResponse =
                                                                                snapshot.data!;
                                                                            _model.debugBackendQueries['TrainerProfileCall_statusCode_Row_pgi2sndy'] =
                                                                                debugSerializeParam(
                                                                              rowTrainerProfileResponse.statusCode,
                                                                              ParamType.int,
                                                                              link: 'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                                              name: 'int',
                                                                              nullable: false,
                                                                            );
                                                                            _model.debugBackendQueries['TrainerProfileCall_responseBody_Row_pgi2sndy'] =
                                                                                debugSerializeParam(
                                                                              rowTrainerProfileResponse.bodyText,
                                                                              ParamType.String,
                                                                              link: 'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
                                                                              name: 'String',
                                                                              nullable: false,
                                                                            );
                                                                            debugLogWidgetClass(_model);

                                                                            return InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {},
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: 35.0,
                                                                                      height: 35.0,
                                                                                      clipBehavior: Clip.antiAlias,
                                                                                      decoration: BoxDecoration(
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Image.network(
                                                                                        valueOrDefault<String>(
                                                                                          TrainerProfileSchemaStruct.maybeFromMap(rowTrainerProfileResponse.jsonBody)?.avatar,
                                                                                          'https://sch5-gusev.gosuslugi.ru/netcat_files/8/149/avatar_scaled_8.jpeg',
                                                                                        ),
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            TrainerProfileSchemaStruct.maybeFromMap(rowTrainerProfileResponse.jsonBody)?.name,
                                                                                            '0',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            2.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                _model.apiResultk39 = await SessionsGroup.approveCall.call(
                                                                                  authToken: FFAppState().token,
                                                                                  sessionID: listsessionsItem.id,
                                                                                );

                                                                                if ((_model.apiResultk39?.succeeded ?? true)) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Вы приняли тренировку',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                    ),
                                                                                  );
                                                                                  setState(() => _model.apiRequestCompleter2 = null);
                                                                                  await _model.waitForApiRequestCompleted2();
                                                                                  setState(() => _model.apiRequestCompleter1 = null);
                                                                                  await _model.waitForApiRequestCompleted1();
                                                                                  setState(() => _model.apiRequestCompleter3 = null);
                                                                                  await _model.waitForApiRequestCompleted3();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Ошибка!',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                setState(() {});
                                                                              },
                                                                              text: 'Принять',
                                                                              options: FFButtonOptions(
                                                                                width: 120.0,
                                                                                height: 30.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                            FFButtonWidget(
                                                                              onPressed: () async {
                                                                                _model.actionn = await SessionsGroup.cancelCall.call(
                                                                                  authToken: FFAppState().token,
                                                                                  sessionID: listsessionsItem.id,
                                                                                );

                                                                                if ((_model.actionn?.succeeded ?? true) == true) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Вы отменили тренировку',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                    ),
                                                                                  );
                                                                                  setState(() => _model.apiRequestCompleter2 = null);
                                                                                  await _model.waitForApiRequestCompleted2();
                                                                                  setState(() => _model.apiRequestCompleter1 = null);
                                                                                  await _model.waitForApiRequestCompleted1();
                                                                                  setState(() => _model.apiRequestCompleter3 = null);
                                                                                  await _model.waitForApiRequestCompleted3();
                                                                                } else {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                    SnackBar(
                                                                                      content: Text(
                                                                                        'Ошибка!',
                                                                                        style: TextStyle(
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      ),
                                                                                      duration: Duration(milliseconds: 4000),
                                                                                      backgroundColor: FlutterFlowTheme.of(context).tertiary,
                                                                                    ),
                                                                                  );
                                                                                }

                                                                                setState(() {});
                                                                              },
                                                                              text: 'Отклонить',
                                                                              options: FFButtonOptions(
                                                                                width: 120.0,
                                                                                height: 30.0,
                                                                                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                                                                                      color: Colors.white,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                                    ),
                                                                                elevation: 0.0,
                                                                                borderSide: BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      return Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'У вас нет активных записей!',
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
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
