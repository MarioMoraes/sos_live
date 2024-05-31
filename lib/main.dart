import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:projeto_sos/src/features/home/home_module.dart';
import 'package:projeto_sos/src/features/splash/splash_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      modules: [
        SplashModule(),
        HomeModule(),
      ],
      builder: (context, routes, flutterGetItNavObserver) => AsyncStateBuilder(
        builder: (asyncStateBuilder) => MaterialApp(
          title: 'SOS RS',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          navigatorObservers: [flutterGetItNavObserver, asyncStateBuilder],
          routes: routes,
        ),
      ),
    );
  }
}
