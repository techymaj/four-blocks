import 'package:flutter/material.dart';
import 'package:four_blocks/widgets/block_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var length = 100;
  var width = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Four Blocks'),
      ),
      body: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: length * 2),
            child: BlockGrid(
              width: width,
              length: length,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Width: $width'),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Generate'),
              ),
              Text('Length: $length'),
            ],
          ),
        ],
      ),
    );
  }
}
