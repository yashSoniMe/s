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
        child: chooser(),
      ),
    );
  }
}
