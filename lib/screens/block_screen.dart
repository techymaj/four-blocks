import 'package:flutter/material.dart';

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
      body: Text(
        widget.blockNumber,
      ),
    );
  }
}
