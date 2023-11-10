
import 'dart:math';

import 'package:flutter/material.dart';

class SingerCard extends StatefulWidget {
  final String singerName;
  final Function onSingerChange;
  const SingerCard({required this.singerName, required this.onSingerChange});

  @override
  State<SingerCard> createState() => _SingerCardState();
}

class _SingerCardState extends State<SingerCard> {
  List<String> singerNames = [
    "Neşet Ertaş",
    "Cem Adrian",
    "Mabel Matiz",
    "Mary Jane",
    "Adele",
    "Lana Del Rey",
  ];

  String selectedSinger = "Neşet Ertaş";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Flutter Callback Example With Dropdown",
          style: TextStyle(
            fontSize: 18,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            widget.onSingerChange(
                singerNames[Random().nextInt(singerNames.length)]);
          },
          child: const Text("Change Singer"),
        ),
        Text("Singer Name :${widget.singerName}"),
        DropdownButton<String>(
          value: selectedSinger,
          items: singerNames.map(
            (singerName) {
              return DropdownMenuItem<String>(
                child: Text(
                  "$singerName",
                ),
                value: singerNames
                    .where((_singerName) => _singerName == singerName)
                    .first,
              );
            },
          ).toList(),
          onChanged: (String? _selectedSinger) {
            widget.onSingerChange(_selectedSinger);
            setState(() {
              selectedSinger = _selectedSinger!;
            });
          },
        ),
      ],
    );
  }
}