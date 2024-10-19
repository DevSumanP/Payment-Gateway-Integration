import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ebook/features/payment_option/presentation/screen/no_connection_screen.dart';
import 'package:ebook/features/payment_option/presentation/screen/payment_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConnectionChecker extends StatefulWidget {
  const ConnectionChecker({super.key});

  @override
  _ConnectionCheckerState createState() => _ConnectionCheckerState();
}

class _ConnectionCheckerState extends State<ConnectionChecker> {
  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();

    // Listen for connectivity changes
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  // Initialize connectivity status asynchronously
  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
    try {
      result =
          await _connectivity.checkConnectivity(); // Fetch connectivity status
    } on PlatformException catch (e) {
      print('Couldn\'t check connectivity status: $e');
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result); // Update the connection status
  }

  // Update connectivity status
  Future<void> _updateConnectionStatus(List<ConnectivityResult> result) async {
    setState(() {
      _connectionStatus = result;
    });
    // ignore: avoid_print
    print('Connectivity changed: $_connectionStatus');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (_connectionStatus[0] == ConnectivityResult.none)
          ? const NoConnection()
          : const PaymentOptionsScreen(),
    );
  }
}
