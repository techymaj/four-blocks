import 'package:flutter/material.dart';
import 'package:four_blocks/widgets/plots/plot_tile.dart';

class PlotGrid extends StatelessWidget {
  const PlotGrid({
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
    final plots = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.amber,
      Colors.purple,
    ];

    final plotNumbers = [
      1,
      2,
      3,
      4,
      5,
    ];

    final shuffledPlots = shuffledList(plots);
    final shuffledNumbers = shuffledList(plotNumbers);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: length * 2,
        childAspectRatio: length / width,
      ),
      itemCount: plots.length,
      itemBuilder: (context, i) => PlotTile(
        plot: '${shuffledNumbers[i]}',
        color: shuffledPlots[i],
      ),
    );
  }
}
