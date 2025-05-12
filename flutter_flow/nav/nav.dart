import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

const debugRouteLinkMap = {
  '/openingscreen':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Openingscreen',
  '/signIn':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=SignIn',
  '/registration':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Registration',
  '/homePage':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=HomePage',
  '/regFormNew':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=RegFormNew',
  '/profile':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Profile',
  '/profileEdit':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ProfileEdit',
  '/settings':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=settings',
  '/calendar':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Calendar',
  '/coach':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Coach',
  '/autorisationEmail':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=AutorisationEmail',
  '/tinder':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Tinder',
  '/coachProfile':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CoachProfile',
  '/clubs':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Clubs',
  '/clubsProdile/:clubid':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ClubsProfile',
  '/booking':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Booking',
  '/courts':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Courts',
  '/courtsBooking':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=CourtsBooking',
  '/tournaments':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=tournaments',
  '/tournamentspage':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=tournamentspage',
  '/event':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=event',
  '/map':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=map',
  '/support':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Support',
  '/chats':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=Chats',
  '/chatPage':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=ChatPage',
  '/eventPage':
      'https://app.flutterflow.io/project/neva-sport-firebase-m5k9cq?tab=uiBuilder&page=EventPage'
};

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : SignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : SignInWidget(),
        ),
        FFRoute(
          name: 'Openingscreen',
          path: '/openingscreen',
          builder: (context, params) => OpeningscreenWidget(),
        ),
        FFRoute(
          name: 'SignIn',
          path: '/signIn',
          builder: (context, params) => SignInWidget(),
        ),
        FFRoute(
          name: 'Registration',
          path: '/registration',
          builder: (context, params) => RegistrationWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomePage')
              : NavBarPage(
                  initialPage: 'HomePage',
                  page: HomePageWidget(),
                ),
        ),
        FFRoute(
          name: 'RegFormNew',
          path: '/regFormNew',
          builder: (context, params) => RegFormNewWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ProfileWidget(),
          ),
        ),
        FFRoute(
          name: 'ProfileEdit',
          path: '/profileEdit',
          requireAuth: true,
          builder: (context, params) => ProfileEditWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'settings')
              : SettingsWidget(),
        ),
        FFRoute(
          name: 'Calendar',
          path: '/calendar',
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Calendar')
              : CalendarWidget(
                  back: params.getParam(
                    'back',
                    ParamType.bool,
                  ),
                ),
        ),
        FFRoute(
          name: 'Coach',
          path: '/coach',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CoachWidget(),
          ),
        ),
        FFRoute(
          name: 'AutorisationEmail',
          path: '/autorisationEmail',
          builder: (context, params) => AutorisationEmailWidget(),
        ),
        FFRoute(
          name: 'Tinder',
          path: '/tinder',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TinderWidget(),
          ),
        ),
        FFRoute(
          name: 'CoachProfile',
          path: '/coachProfile',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CoachProfileWidget(),
          ),
        ),
        FFRoute(
          name: 'Clubs',
          path: '/clubs',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ClubsWidget(),
          ),
        ),
        FFRoute(
          name: 'ClubsProfile',
          path: '/clubsProdile/:clubid',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: ClubsProfileWidget(
              clubid: params.getParam(
                'clubid',
                ParamType.String,
              ),
            ),
          ),
        ),
        FFRoute(
          name: 'Booking',
          path: '/booking',
          requireAuth: true,
          builder: (context, params) => BookingWidget(),
        ),
        FFRoute(
          name: 'Courts',
          path: '/courts',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: CourtsWidget(),
          ),
        ),
        FFRoute(
          name: 'CourtsBooking',
          path: '/courtsBooking',
          requireAuth: true,
          builder: (context, params) => CourtsBookingWidget(),
        ),
        FFRoute(
          name: 'tournaments',
          path: '/tournaments',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TournamentsWidget(),
          ),
        ),
        FFRoute(
          name: 'tournamentspage',
          path: '/tournamentspage',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: TournamentspageWidget(),
          ),
        ),
        FFRoute(
          name: 'event',
          path: '/event',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EventWidget(),
          ),
        ),
        FFRoute(
          name: 'map',
          path: '/map',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: MapWidget(),
          ),
        ),
        FFRoute(
          name: 'Support',
          path: '/support',
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: SupportWidget(),
          ),
        ),
        FFRoute(
          name: 'Chats',
          path: '/chats',
          requireAuth: true,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'Chats') : ChatsWidget(),
        ),
        FFRoute(
          name: 'ChatPage',
          path: '/chatPage',
          requireAuth: true,
          builder: (context, params) => ChatPageWidget(
            recieve: params.getParam(
              'recieve',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: 'EventPage',
          path: '/eventPage',
          requireAuth: true,
          builder: (context, params) => NavBarPage(
            initialPage: '',
            page: EventPageWidget(),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/App_Load.svg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
