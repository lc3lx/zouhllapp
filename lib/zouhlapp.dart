import 'package:app/core/common/screens/no_network_screen.dart';
import 'package:app/core/app/connectivity_controller.dart';
import 'package:flutter/material.dart';

class zouhlapp extends StatelessWidget {
  const zouhlapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return MaterialApp(
            title: 'Zouhlapp',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
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
            home: Scaffold(
              appBar: AppBar(title: Text('Zouhlapp')),
              body: Center(child: Text('Hello, World!')),
            ),
          );
        } else {
          return MaterialApp(home: NoNetworkScreen());
        }
      },
    );
  }
}
