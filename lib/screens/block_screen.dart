import 'package:flutter/material.dart';
import 'package:four_blocks/widgets/plots/plot_grid.dart';

class BlockScreen extends StatefulWidget {
  const BlockScreen({
    Key? key,
    required this.blockNumber,
  }) : super(key: key);

  final String blockNumber;

  @override
  State<BlockScreen> createState() => _BlockScreenState();
}

class _BlockScreenState extends State<BlockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Block number ${widget.blockNumber}'),
      ),
      body: const PlotGrid(
        width: 100,
        length: 50,
      ),
    );
  }
}
