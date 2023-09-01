
import 'package:app_button/app_button.dart';
import 'package:call_function/call_function.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Package Tester')),
      body: Column(
        children: [
          AppButton('Sample Test', Icons.add,onClick: () {
            DebugUtil.echo('heyhey');
          },)
        ],
      ),
    );
  }
}