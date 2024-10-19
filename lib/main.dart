import 'package:ebook/core/secret/khalti_keys.dart';
import 'package:ebook/core/service/connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

void main() async {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xffffffff), // Set the status bar color to white
    statusBarIconBrightness:
        Brightness.dark, // Set status bar icons to dark (for light background)
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
        // Wrap the entire app with KhaltiScope
        publicKey: KhaltiCredentials.publicKey, // Your public key
        builder: (context, navigatorKey) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            supportedLocales: const [
              Locale('en', 'US'),
              Locale('ne', 'NP'),
            ],
            localizationsDelegates: const [
              KhaltiLocalizations.delegate,
            ],
            home: const ConnectionChecker(),
          );
        });
  }
}
