import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'map_model.dart';
export 'map_model.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key, this.addModelFn});

  final Function(FlutterFlowModel)? addModelFn;

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> with RouteAware {
  late MapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapModel());
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
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: StreamBuilder<List<LocationRecord>>(
                    stream: queryLocationRecord(),
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
                      List<LocationRecord> googleMapLocationRecordList =
                          snapshot.data!;

                      _model.debugBackendQueries[
                              'googleMapLocationRecordList_GoogleMap_2xqtnkie${googleMapLocationRecordList.length > 100 ? ' (first 100)' : ''}'] =
                          debugSerializeParam(
                        googleMapLocationRecordList.take(100),
                        ParamType.Document,
                        isList: true,
                        link:
                            'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=map',
                        name: 'Location',
                        nullable: false,
                      );
                      debugLogWidgetClass(_model);

                      return FlutterFlowGoogleMap(
                        controller: _model.googleMapsController,
                        onCameraIdle: (latLng) =>
                            _model.googleMapsCenter = latLng,
                        initialLocation: _model.googleMapsCenter ??=
                            FFAppState().initialLocation!,
                        markers: googleMapLocationRecordList
                            .map(
                              (marker) => FlutterFlowMarker(
                                marker.reference.path,
                                marker.location!,
                                () async {
                                  FFAppState().idViewProfile = marker.clubID;
                                  setState(() {});

                                  context.pushNamed(
                                    'ClubsProfile',
                                    pathParameters: {
                                      'clubid': serializeParam(
                                        FFAppState().idViewProfile,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                              ),
                            )
                            .toList(),
                        markerColor: GoogleMarkerColor.violet,
                        markerImage: MarkerImage(
                          imagePath: 'assets/images/image_50.png',
                          isAssetImage: true,
                          size: 20.0 ?? 20,
                        ),
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 10.0,
                        allowInteraction: true,
                        allowZoom: true,
                        showZoomControls: true,
                        showLocation: true,
                        showCompass: false,
                        showMapToolbar: false,
                        showTraffic: false,
                        centerMapOnMarkerTap: true,
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
