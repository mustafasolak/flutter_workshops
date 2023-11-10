import 'package:flutter/material.dart';
import 'package:listview_without_rebuild/views/appbody.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ListviewApp(),
    ),
  );
}

class ListviewApp extends StatelessWidget {
  const ListviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffefefef),
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Listview Without Rebuild'),
        centerTitle: true,
      ),
      body: const AppBody(),
    );
  }
}
