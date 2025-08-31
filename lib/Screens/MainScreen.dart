import 'package:flutter/material.dart';
import 'package:s/Widgets/chooser.dart';
import 'package:s/Widgets/gridTile.dart';
import 'package:s/Widgets/sudokuGrid.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SudokuGrid(),
            chooser(),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Colors.green,content: Text('Not free to solve for you',style: TextStyle(fontSize: 22),)));
            }, child: Text("Solve",style: TextStyle(fontSize: 30,fontFamily: 'myFontFamily')),)
          ],
        ),
      ),
    );
  }
}
