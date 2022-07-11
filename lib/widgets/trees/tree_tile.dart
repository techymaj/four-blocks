import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../screens/tree_screen.dart';

class TreeTile extends StatelessWidget {
  const TreeTile({
    Key? key,
    required this.color,
    required this.tree,
  }) : super(key: key);

  final Color color;
  final String tree;

  // get color => widget.color;

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/tree.svg';
    final Widget svg = SvgPicture.asset(assetName,
        color: color, semanticsLabel: 'Tree #$tree');

    return GestureDetector(
      child: Center(
        child: Column(
          children: [
            Text('Tree #$tree',
                style: const TextStyle(
                  fontSize: 32.0,
                )),
            Expanded(child: svg),
          ],
        ),
      ),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => TreeScreen(
          treeNumber: tree,
        ),
      )),
    );
  }
}
