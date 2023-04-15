import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => SplashWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => SplashWidget(),
        ),
        FFRoute(
          name: 'Splash',
          path: '/splash',
          builder: (context, params) => SplashWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'PasswordResetSuccessfully',
          path: '/passwordResetSuccessfully',
          builder: (context, params) => PasswordResetSuccessfullyWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          builder: (context, params) => DashboardWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          builder: (context, params) => SettingsWidget(),
        ),
        FFRoute(
          name: 'StockOrderListing',
          path: '/stockOrderListing',
          builder: (context, params) => StockOrderListingWidget(),
        ),
        FFRoute(
          name: 'InstListingForInstaller',
          path: '/instListingForInstaller',
          builder: (context, params) => InstListingForInstallerWidget(),
        ),
        FFRoute(
          name: 'StockOrderListing-Detail',
          path: '/stockOrderListingDetail',
          builder: (context, params) => StockOrderListingDetailWidget(),
        ),
        FFRoute(
          name: 'OrderItem-Detail',
          path: '/orderItemDetail',
          builder: (context, params) => OrderItemDetailWidget(),
        ),
        FFRoute(
          name: 'StockOrderListing-Detail-Verified',
          path: '/stockOrderListingDetailVerified',
          builder: (context, params) => StockOrderListingDetailVerifiedWidget(),
        ),
        FFRoute(
          name: 'DigitaSignature',
          path: '/digitaSignature',
          builder: (context, params) => DigitaSignatureWidget(),
        ),
        FFRoute(
          name: 'StockOrderListing-Detail-VerifyTAB',
          path: '/stockOrderListingDetailVerifyTAB',
          builder: (context, params) =>
              StockOrderListingDetailVerifyTABWidget(),
        ),
        FFRoute(
          name: 'StockOrderListing-Detail-VerifyTAB-Popup',
          path: '/stockOrderListingDetailVerifyTABPopup',
          builder: (context, params) =>
              StockOrderListingDetailVerifyTABPopupWidget(),
        ),
        FFRoute(
          name: 'OrderItem-Detail-PanelNo',
          path: '/orderItemDetailPanelNo',
          builder: (context, params) => OrderItemDetailPanelNoWidget(),
        ),
        FFRoute(
          name: 'StockOrder-Scan',
          path: '/stockOrderScan',
          builder: (context, params) => StockOrderScanWidget(),
        ),
        FFRoute(
          name: 'StockOrder-Verify',
          path: '/stockOrderVerify',
          builder: (context, params) => StockOrderVerifyWidget(),
        ),
        FFRoute(
          name: 'StockOrder-Others',
          path: '/stockOrderOthers',
          builder: (context, params) => StockOrderOthersWidget(),
        ),
        FFRoute(
          name: 'StockTransfer-StockOut',
          path: '/stockTransferStockOut',
          builder: (context, params) => StockTransferStockOutWidget(),
        ),
        FFRoute(
          name: 'StockTransfer-Detail',
          path: '/stockTransferDetail',
          builder: (context, params) => StockTransferDetailWidget(),
        ),
        FFRoute(
          name: 'StockTransfer-Out-Scan',
          path: '/stockTransferOutScan',
          builder: (context, params) => StockTransferOutScanWidget(),
        ),
        FFRoute(
          name: 'StockTransfer-StockIn',
          path: '/stockTransferStockIn',
          builder: (context, params) => StockTransferStockInWidget(),
        ),
        FFRoute(
          name: 'StockTransfer-Detail-Verified',
          path: '/stockTransferDetailVerified',
          builder: (context, params) => StockTransferDetailVerifiedWidget(),
        ),
        FFRoute(
          name: 'OngoingJobs-All',
          path: '/ongoingJobsAll',
          builder: (context, params) => OngoingJobsAllWidget(),
        ),
        FFRoute(
          name: 'OngoingJobs-ScannedJobs',
          path: '/ongoingJobsScannedJobs',
          builder: (context, params) => OngoingJobsScannedJobsWidget(),
        ),
        FFRoute(
          name: 'OngoingJobs-Scanned-DelByTrans',
          path: '/ongoingJobsScannedDelByTrans',
          builder: (context, params) => OngoingJobsScannedDelByTransWidget(),
        ),
        FFRoute(
          name: 'OngoingJobs-Scanned-PickupWarehouse',
          path: '/ongoingJobsScannedPickupWarehouse',
          builder: (context, params) =>
              OngoingJobsScannedPickupWarehouseWidget(),
        ),
        FFRoute(
          name: 'OngoingJobs-Scanned-Detail',
          path: '/ongoingJobsScannedDetail',
          builder: (context, params) => OngoingJobsScannedDetailWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
  ]) {
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
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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
