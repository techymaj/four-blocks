import 'package:flutter/material.dart';
import 'package:four_blocks/widgets/trees/tree_grid.dart';

class PlotScreen extends StatefulWidget {
  const PlotScreen({
    Key? key,
    required this.plotNumber,
  }) : super(key: key);

  final String plotNumber;

  @override
  State<PlotScreen> createState() => _PlotScreenState();
}

class _PlotScreenState extends State<PlotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plot number ${widget.plotNumber}'),
      ),
      body: const TreeGrid(
        width: 100,
        length: 50,
      ),
    );
  }
}
