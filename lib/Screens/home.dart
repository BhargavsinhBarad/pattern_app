import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  RangeValues values = RangeValues(5, 20);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pattern"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Column(
              children: [
                for (int i = 1; i <= values.end; i++)
                  Row(
                    children: [
                      for (int j = 1; j <= i; j++) Text("$j "),
                    ],
                  ),
              ],
            ),
          ),
          Expanded(
            child: RangeSlider(
                values: values,
                min: 5,
                max: 20,
                onChanged: (val) {
                  setState(() {
                    values = val;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
