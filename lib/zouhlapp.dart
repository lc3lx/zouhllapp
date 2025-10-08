import 'package:flutter/material.dart';

class zouhlapp extends StatelessWidget {
  const zouhlapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Zouhlapp')),
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}
