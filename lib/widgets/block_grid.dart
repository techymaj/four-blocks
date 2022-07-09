import 'package:flutter/material.dart';
import 'package:four_blocks/widgets/block_tile.dart';

class BlockGrid extends StatelessWidget {
  const BlockGrid({
    Key? key,
    required this.width,
    required this.length,
  }) : super(key: key);

  final int width;
  final int length;

  List shuffledList(List list) {
    list.shuffle();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final blocks = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.amber,
    ];

    final blockNumbers = [
      1,
      2,
      3,
      4,
    ];

    final shuffledBlocks = shuffledList(blocks);
    final shuffledNumbers = shuffledList(blockNumbers);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: length * 2,
        childAspectRatio: length / width,
      ),
      itemCount: blocks.length,
      itemBuilder: (context, i) => BlockTile(
        block: '${shuffledNumbers[i]}',
        color: shuffledBlocks[i],
      ),
    );
  }
}
