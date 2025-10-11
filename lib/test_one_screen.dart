import 'package:app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test One Screen')),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed('/testTwo');
          },
          child: const Text('Go to Test Two Screen'),
        ),
      ),
    );
  }
}
