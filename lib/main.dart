import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main(List<String> args) {
  runApp(const FourBlocks());
}

class FourBlocks extends StatelessWidget {
  const FourBlocks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
