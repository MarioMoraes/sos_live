import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:projeto_sos/src/features/splash/splash_page.dart';

class SplashModule extends FlutterGetItModule {
  @override
  String get moduleRouteName => '/';

  @override
  Map<String, WidgetBuilder> get pages =>
      {'/': (context) => const SplashPage()};
}
