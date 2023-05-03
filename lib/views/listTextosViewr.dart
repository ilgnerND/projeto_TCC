import 'package:flutter/material.dart';

class ListTextoViewr {
  final _colors = [
    Colors.red.shade200,
    Colors.blue.shade200,
    Colors.green.shade200,
    Colors.brown.shade200,
    Colors.purple.shade200,
    Colors.orange.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView(
          itemExtent: 250,
          children: _colors
              .map<Widget>((color) => Container(
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: color, borderRadius: BorderRadius.circular(8)),
                    alignment: Alignment.center,
                    child: Text("container ${_colors.indexOf(color) + 1}"),
                  ))
              .toList()),
    );
  }
}
