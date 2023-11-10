
import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int? childCount;
  final VoidCallback? onCountSelected;
  final Function? onCountChange;

  Count({this.childCount, this.onCountSelected, this.onCountChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Flutter Callback Example With Buttons",
          style: TextStyle(
            fontSize: 18,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                onCountChange!(1);
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
            ElevatedButton(
              onPressed: () => onCountSelected!(),
              child: Text(
                "$childCount",
              ),
            ),
            IconButton(
              onPressed: () => onCountChange!(-1),
              icon: const Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
