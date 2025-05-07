// Automatic FlutterFlow imports
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

class TimeoutGestureDetector extends StatefulWidget {
  const TimeoutGestureDetector({
    Key? key,
    this.width,
    this.height,
    this.timeoutSeconds = 30,
    this.actionOnDetected,
    this.actionOnTimeout,
    this.actionOnDispose,
    this.actionOnRestart,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int timeoutSeconds;
  final Future Function()? actionOnDetected;
  final Future Function()? actionOnTimeout;
  final Future Function()? actionOnDispose;
  final Future Function()? actionOnRestart;

  @override
  State<TimeoutGestureDetector> createState() => _TimeoutGestureDetectorState();
}

class _TimeoutGestureDetectorState extends State<TimeoutGestureDetector>
    with WidgetsBindingObserver {
  Timer? _timer;
  bool _isTimedOut = false;
  bool _isDisposed = false;
  bool _isPaused = false;
  bool _isInSystemPause = false;
  String? _initialRoute;
  bool _isInitialized = false;

  String _getBaseRoute(String route) {
    // Strip query parameters and return base route
    return route.split('?').first;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _startTimer();
    //print('NAV-LOG: Detector initialized');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      _setupNavigationMonitoring();
      _isInitialized = true;
    }
  }

  void _setupNavigationMonitoring() {
    try {
      final router = GoRouter.of(context);
      _initialRoute = _getBaseRoute(router.getCurrentLocation());
      router.routerDelegate.addListener(_checkForRouteChanges);
    } catch (e) {
      // Error handling
    }
  }

  void _checkForRouteChanges() {
    if (_isDisposed) return;

    try {
      final router = GoRouter.of(context);
      final currentRoute = _getBaseRoute(router.getCurrentLocation());
      final isOnInitialPage = currentRoute == _initialRoute;

      if (isOnInitialPage && _isPaused) {
        _resumeFromNavigation();
      } else if (!isOnInitialPage && !_isPaused) {
        _pauseForNavigation();
      }
    } catch (e) {
      // Error handling
    }
  }

  void _pauseForNavigation() {
    if (!_isDisposed) {
      _isPaused = true;
      _cancelTimer();
    }
  }

  void _tryResume() {
    final currentRoute =
        _getBaseRoute(GoRouter.of(context).getCurrentLocation());
    if (currentRoute == _initialRoute) {
      _isPaused = false;
      if (_isTimedOut) {
        _isTimedOut = false;
      }
      widget.actionOnRestart?.call();
      _startTimer();
    }
  }

  void _resumeFromNavigation() {
    if (!_isDisposed && !_isInSystemPause) {
      _tryResume();
    }
  }

  void _handleSystemResume() {
    _isInSystemPause = false;
    _tryResume();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        _handleSystemPause();
        break;
      case AppLifecycleState.resumed:
        if (_isInSystemPause) {
          _handleSystemResume();
        }
        break;
      case AppLifecycleState.paused:
        _handleSystemPause();
        break;
      case AppLifecycleState.detached:
        _cleanup();
        break;
      default:
        break;
    }
  }

  void _handleSystemPause() {
    _isInSystemPause = true;
    _isPaused = true;
    _cancelTimer();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    try {
      final router = GoRouter.of(context);
      router.routerDelegate.removeListener(_checkForRouteChanges);
    } catch (e) {
      // Error handling
    }

    _isDisposed = true;
    _cancelTimer();
    widget.actionOnDispose?.call();
    super.dispose();
  }

  void _cleanup() {
    if (!_isDisposed) {
      _isDisposed = true;
      _cancelTimer();
      widget.actionOnDispose?.call();
    }
  }

  void _cancelTimer() {
    _timer?.cancel();
    _timer = null;
  }

  void _startTimer() {
    if (_isDisposed || _isPaused || _isInSystemPause) return;
    _cancelTimer();
    _timer = Timer(Duration(seconds: widget.timeoutSeconds), () async {
      if (_isDisposed || _isPaused || _isInSystemPause) return;
      _isTimedOut = true;
      widget.actionOnTimeout?.call();
    });
  }

  void _handleGesture() {
    if (_isDisposed || _isPaused || _isInSystemPause) return;
    if (_isTimedOut) {
      _isTimedOut = false;
    }
    widget.actionOnDetected?.call();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) => _handleGesture(),
      onPointerMove: (_) => _handleGesture(),
      onPointerHover: (_) => _handleGesture(),
      child: IgnorePointer(
        child: Container(
          width: widget.width ?? double.infinity,
          height: widget.height ?? double.infinity,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
