import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../screens/plot_screen.dart';

class PlotTile extends StatelessWidget {
  const PlotTile({
    Key? key,
    required this.color,
    required this.plot,
  }) : super(key: key);

  final Color color;
  final String plot;

  // get color => widget.color;

  @override
  Widget build(BuildContext context) {
    const radiusOfPLot = 10;
    const areaOfPlot = math.pi * radiusOfPLot * radiusOfPLot;
    // print('Plot Area: $areaOfPlot');
    return GestureDetector(
      child: Container(
        width: areaOfPlot,
        height: areaOfPlot,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text('plot #$plot'),
        ),
      ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PlotScreen(plotNumber: plot),
        ),
      ),
    );
  }
}
