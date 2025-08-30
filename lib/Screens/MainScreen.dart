import 'package:flutter/material.dart';
import 'package:s/Widgets/chooser.dart';
import 'package:s/Widgets/gridTile.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
            child: Text("Sudoku Solver")
        ),
      ),
      body: Center(
        child: Row(
          children: [
            gridTile(row: 1,column: 1,value: 1),
            gridTile(row: 1,column: 2,value: 2),
            gridTile(row: 1,column: 3,value: 3),
            gridTile(row: 1,column: 4,value: 4),
            gridTile(row: 1,column: 5,value: 5),
            gridTile(row: 1,column: 6,value: 6),
            gridTile(row: 1,column: 7,value: 7),
            gridTile(row: 1,column: 8,value: 8),
            gridTile(row: 1,column: 9,value: 9),


          ],
        ),
      ),
    );
  }
}
