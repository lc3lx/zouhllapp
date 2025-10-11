import 'package:app/core/common/screens/no_network_screen.dart';
import 'package:app/core/app/connectivity_controller.dart';
import 'package:app/core/routes/app_routes.dart';
import 'package:app/core/theme/app_theme.dart' as AppTheme;
import 'package:app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class zouhlapp extends StatelessWidget {
  const zouhlapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(376, 812),
            child: MaterialApp(
              title: 'Zouhlapp',
              debugShowCheckedModeBanner: false,
              theme: themeLight(),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.testOne,
            ),
          );
        } else {
          return MaterialApp(home: NoNetworkScreen());
        }
      },
    );
  }
}
