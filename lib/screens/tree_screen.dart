import 'package:flutter/material.dart';

class TreeScreen extends StatefulWidget {
  const TreeScreen({
    Key? key,
    required this.treeNumber,
  }) : super(key: key);

  final String treeNumber;

  @override
  State<TreeScreen> createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tree number ${widget.treeNumber}'),
      ),
      body: Text(
        widget.treeNumber,
      ),
    );
  }
}
