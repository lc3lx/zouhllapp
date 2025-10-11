import 'package:app/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class MyImages extends ThemeExtension<MyImages> {
  MyImages({required this.testImage});
  final String? testImage;

  @override
  MyImages copyWith({String? mainColor}) {
    return MyImages(testImage: testImage);
  }

  @override
  MyImages lerp(ThemeExtension<MyImages>? other, double t) {
    if (other is! MyImages) {
      return this;
    }
    return MyImages(testImage: testImage);
  }

  static MyImages dark = MyImages(testImage: AppImages.noNetwork);
  static MyImages light = MyImages(testImage: AppImages.pageUnderBuild);
}
