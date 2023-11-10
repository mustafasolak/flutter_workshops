import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextItem extends StatefulWidget {
  final int itemIndex;

  const TextItem({super.key, required this.itemIndex});

  @override
  State<TextItem> createState() => _TextItemState();
}

class _TextItemState extends State<TextItem>
    with AutomaticKeepAliveClientMixin<TextItem> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'item number : ${widget.itemIndex}',
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width * .075,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
