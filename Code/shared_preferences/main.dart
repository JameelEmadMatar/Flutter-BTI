import 'package:flutter/material.dart';
import 'package:my_app/form_screen.dart';
import 'package:my_app/notfound.dart';
import 'package:my_app/provider/sp_provider.dart';
import 'package:provider/provider.dart';
void main() => runApp(
  ChangeNotifierProvider<SpProvider>(
    create: (context) {
      return SpProvider();
    },
    child: MaterialApp(
      // navigatorKey: AppRoute.navKey,
      onGenerateRoute: (settings){ // route not found (404 error)
        return MaterialPageRoute(builder: (context) => NotFound());
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        // Brightness.dark,
      ),
      home: FormScreen(),
      /*
      initialRoute: '/',
      routes: {
        /*
        "/" : (context) => FormScreen(),
        "screen2" : (context) => DataScreen(),
        */
        AppRoute.mainPgae :(context) => FormScreen(),
        AppRoute.screen2 :(context) => DataScreen(),
      },
      */
    ),
  )
);