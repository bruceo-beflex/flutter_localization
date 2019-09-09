import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        FlutterI18nDelegate(
            useCountryCode: false, fallbackFile: 'en', path: 'assets/i18n'),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
