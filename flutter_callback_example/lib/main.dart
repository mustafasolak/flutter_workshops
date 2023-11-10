import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(CallbackExampleApp());
}

class CallbackExampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
