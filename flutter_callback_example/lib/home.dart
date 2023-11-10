import 'package:flutter/material.dart';

import 'count.dart';
import 'singer_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int parentCount = 0;

  callbackMethod(int deger) {
    setState(() {
      parentCount += deger;
    });
  }

  String selectedsingerName = "";

  chooseSinger(String _singerName) {
    setState(() {
      selectedsingerName = _singerName;
    });
    print("Selected singer name is :$selectedsingerName");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Widget Communication',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Count(
                childCount: parentCount,
                onCountSelected: () => print("selected the counter"),
                onCountChange: callbackMethod,
                // onCountChange: (int val) {
                //   print('oncountchage method worked. val: $val');
                //   setState(() => parentCount += val);
                // },
              ),
              const Divider(
                height: 100,
                color: Colors.green,
                thickness: 2,
                endIndent: 60,
                indent: 60,
              ),
              SingerCard(
                singerName: selectedsingerName,
                onSingerChange: chooseSinger,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
