import 'package:app/core/language/app_localizations.dart';
import 'package:app/core/theme/color_extension.dart';
import 'package:app/core/theme/assets_extensions.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  //cololr
  MyColors get colors => Theme.of(this).extension<MyColors>()!;
  //images
  MyAssets get images => Theme.of(this).extension<MyAssets>()!;
  //language
  String translate(String key) {
    return AppLocalizations.of(this)!.translate(key).toString();
  }

  //navigator
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
