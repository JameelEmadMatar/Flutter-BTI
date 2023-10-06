import 'package:flutter/material.dart';
import 'package:my_app/app_router.dart';
import 'package:my_app/form_screen.dart';
import 'package:my_app/notfound.dart';
import 'package:my_app/provider_data.dart';
import 'package:my_app/screen2.dart';
import 'package:provider/provider.dart';
void main() => runApp(
  ChangeNotifierProvider<ProviderClass>(
    create: (context) {
      return ProviderClass();
    },
    child: MaterialApp(
      // navigatorKey: AppRoute.navKey,
      onGenerateRoute: (settings){ // route not found (404 error)
        return MaterialPageRoute(builder: (context) => NotFound());
      },
      initialRoute: '/',
      routes: {
        /*
        "/" : (context) => FormScreen(),
        "screen2" : (context) => DataScreen(),
        */
        AppRoute.mainPgae :(context) => FormScreen(),
        AppRoute.screen2 :(context) => DataScreen(),
      },
    ),
  )
);