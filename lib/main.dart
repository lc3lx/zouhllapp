import 'package:app/core/app/env.variables.dart';
import 'package:app/zouhlapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp].).then((_){
    runApp(const zouhlapp());
  });

}
