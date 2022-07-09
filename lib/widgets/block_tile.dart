import 'package:flutter/material.dart';

import '../screens/block_screen.dart';

class BlockTile extends StatelessWidget {
  const BlockTile({
    Key? key,
    required this.color,
    required this.block,
  }) : super(key: key);

  final Color color;
  final String block;

  // get color => widget.color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
          child: Text('Block #$block'),
        ),
      ),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => BlockScreen(blockNumber: block),
      )),
    );
  }
}
