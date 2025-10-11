import 'package:app/core/style/colors/colors.dart.dart';
import 'package:app/core/style/colors/colors_light.dart';
import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors> {
  MyColors({required this.mainColor});
  final Color? mainColor;

  @override
  MyColors copyWith({Color? mainColor}) {
    return MyColors(mainColor: mainColor);
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) {
      return this;
    }
    return MyColors(mainColor: Color.lerp(mainColor, other.mainColor, t));
  }

  static MyColors dark = MyColors(mainColor: ColorsDark.mainColor);
  static MyColors light = MyColors(mainColor: ColorsLight.mainColor);
}
