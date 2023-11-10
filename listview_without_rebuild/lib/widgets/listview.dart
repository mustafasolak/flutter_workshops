import 'package:flutter/material.dart';
import 'package:listview_without_rebuild/widgets/text_item.dart';

class MsListview extends StatefulWidget {
  const MsListview({Key? key}) : super(key: key);

  @override
  State<MsListview> createState() => _MsListviewState();
}

class _MsListviewState extends State<MsListview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        print('item build. item index :$index');
        return TextItem(
          itemIndex: index,
        );
      },
    );
  }
}
