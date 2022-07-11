import 'package:flutter/material.dart';
import 'package:four_blocks/widgets/trees/tree_tile.dart';

class TreeGrid extends StatelessWidget {
  const TreeGrid({
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
    final trees = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.amber,
      Colors.purple,
      Colors.brown,
      Colors.pink,
      Colors.orange,
      Colors.teal,
      Colors.indigo,
    ];

    final treeNumbers = [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
    ];

    final shuffledTrees = shuffledList(trees);
    final shuffledNumbers = shuffledList(treeNumbers);

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        // childAspectRatio: length / width,
      ),
      itemCount: trees.length,
      itemBuilder: (context, i) => TreeTile(
        tree: '${shuffledNumbers[i]}',
        color: shuffledTrees[i],
      ),
    );
  }
}
