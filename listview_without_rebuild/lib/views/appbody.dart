import 'package:flutter/material.dart';
import 'package:listview_without_rebuild/widgets/listview.dart';
import 'package:listview_without_rebuild/widgets/listview_image.dart';

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const MsImageListview(),
    );
  }
}
