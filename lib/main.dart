import 'package:app/core/app/env.variables.dart';
import 'package:app/core/app/connectivity_controller.dart';
import 'package:app/zouhlapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await ConnectivityController.instance.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const zouhlapp());
  });
}
