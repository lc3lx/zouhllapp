import 'package:app/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  MyAssets({required this.testImage});
  final String? testImage;

  @override
  MyAssets copyWith({String? mainColor}) {
    return MyAssets(testImage: testImage);
  }

  @override
  MyAssets lerp(ThemeExtension<MyAssets>? other, double t) {
    if (other is! MyAssets) {
      return this;
    }
    return MyAssets(testImage: testImage);
  }

  static MyAssets dark = MyAssets(testImage: AppImages.noNetwork);
  static MyAssets light = MyAssets(testImage: AppImages.pageUnderBuild);
}
