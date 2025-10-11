import 'package:app/core/common/screens/under_build_screen.dart';
import 'package:app/core/routes/base_routes.dart';
import 'package:app/test_one_screen.dart';
import 'package:app/test_tow_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const testOne = '/testOne';
  static const testTwo = '/testTwo';
  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: const TestOneScreen());

      case testTwo:
        return BaseRoute(page: const TestTowScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
