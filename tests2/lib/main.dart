import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_before/providers/app.dart';
import 'package:test_before/providers/details.dart';
import 'package:test_before/providers/favorite.dart';
import 'package:test_before/providers/home.dart';
import 'package:test_before/scrreen/main_screen.dart';
import 'package:test_before/util/consts.dart';

void main() {
  runApp(
      MyApp()
//    MultiProvider(
//      providers: [
//        ChangeNotifierProvider(create: (_) => AppProvider()),
//        ChangeNotifierProvider(create: (_) => HomeProvider()),
//        ChangeNotifierProvider(create: (_) => DetailsProvider()),
//        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
//      ],
//      child: MyApp(),
//    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (BuildContext context, AppProvider appProvider, Widget child) {
        return MaterialApp(
          key: appProvider.key,
          debugShowCheckedModeBanner: false,
          navigatorKey: appProvider.navigatorKey,
          title: Constants.appName,
          theme: appProvider.theme,
//          darkTheme: Constants.darkTheme,
          home: MainScreen(),
        );
      },
    );
  }
}