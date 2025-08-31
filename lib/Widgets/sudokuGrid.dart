import 'package:flutter/material.dart';
import 'package:s/Widgets/gridTile.dart';

class SudokuGrid extends StatelessWidget {
  const SudokuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.maxFinite,
      child: GridView.count(
        crossAxisCount: 3,
        children: [

          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                gridTile(row: 1, column: 1, box: 1),
                gridTile(row: 1, column: 2, box: 1),
                gridTile(row: 1, column: 3, box: 1),
                gridTile(row: 2, column: 1, box: 1),
                gridTile(row: 2, column: 2, box: 1),
                gridTile(row: 2, column: 3, box: 1),
                gridTile(row: 3, column: 1, box: 1),
                gridTile(row: 3, column: 2, box: 1),
                gridTile(row: 3, column: 3, box: 1),
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                gridTile(row: 1, column: 1+3, box: 2),
                gridTile(row: 1, column: 2+3, box: 2),
                gridTile(row: 1, column: 3+3, box: 2),
                gridTile(row: 2, column: 1+3, box: 2),
                gridTile(row: 2, column: 2+3, box: 2),
                gridTile(row: 2, column: 3+3, box: 2),
                gridTile(row: 3, column: 1+3, box: 2),
                gridTile(row: 3, column: 2+3, box: 2),
                gridTile(row: 3, column: 3+3, box: 2),
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                gridTile(row: 1, column: 1+6, box: 3),
                gridTile(row: 1, column: 2+6, box: 3),
                gridTile(row: 1, column: 3+6, box: 3),
                gridTile(row: 2, column: 1+6, box: 3),
                gridTile(row: 2, column: 2+6, box: 3),
                gridTile(row: 2, column: 3+6, box: 3),
                gridTile(row: 3, column: 1+6, box: 3),
                gridTile(row: 3, column: 2+6, box: 3),
                gridTile(row: 3, column: 3+6, box: 3),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
                crossAxisCount: 3,
                children: [
                  gridTile(row: 1+3, column: 1, box: 4),
                  gridTile(row: 1+3, column: 2, box: 4),
                  gridTile(row: 1+3, column: 3, box: 4),
                  gridTile(row: 2+3, column: 1, box: 4),
                  gridTile(row: 2+3, column: 2, box: 4),
                  gridTile(row: 2+3, column: 3, box: 4),
                  gridTile(row: 3+3, column: 1, box: 4),
                  gridTile(row: 3+3, column: 2, box: 4),
                  gridTile(row: 3+3, column: 3, box: 4),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
                crossAxisCount: 3,
                children: [
                  gridTile(row: 1+3, column: 1+3, box: 5),
                  gridTile(row: 1+3, column: 2+3, box: 5),
                  gridTile(row: 1+3, column: 3+3, box: 5),
                  gridTile(row: 2+3, column: 1+3, box: 5),
                  gridTile(row: 2+3, column: 2+3, box: 5),
                  gridTile(row: 2+3, column: 3+3, box: 5),
                  gridTile(row: 3+3, column: 1+3, box: 5),
                  gridTile(row: 3+3, column: 2+3, box: 5),
                  gridTile(row: 3+3, column: 3+3, box: 5),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                gridTile(row: 1+3, column: 1+6, box: 6),
                gridTile(row: 1+3, column: 2+6, box: 6),
                gridTile(row: 1+3, column: 3+6, box: 6),
                gridTile(row: 2+3, column: 1+6, box: 6),
                gridTile(row: 2+3, column: 2+6, box: 6),
                gridTile(row: 2+3, column: 3+6, box: 6),
                gridTile(row: 3+3, column: 1+6, box: 6),
                gridTile(row: 3+3, column: 2+6, box: 6),
                gridTile(row: 3+3, column: 3+6, box: 6),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
                crossAxisCount: 3,
                children: [
                  gridTile(row: 1+6, column: 1, box: 7),
                  gridTile(row: 1+6, column: 2, box: 7),
                  gridTile(row: 1+6, column: 3, box: 7),
                  gridTile(row: 2+6, column: 1, box: 7),
                  gridTile(row: 2+6, column: 2, box: 7),
                  gridTile(row: 2+6, column: 3, box: 7),
                  gridTile(row: 3+6, column: 1, box: 7),
                  gridTile(row: 3+6, column: 2, box: 7),
                  gridTile(row: 3+6, column: 3, box: 7),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
                crossAxisCount: 3,
                children: [
                  gridTile(row: 1+6, column: 1+3, box: 8),
                  gridTile(row: 1+6, column: 2+3, box: 8),
                  gridTile(row: 1+6, column: 3+3, box: 8),
                  gridTile(row: 2+6, column: 1+3, box: 8),
                  gridTile(row: 2+6, column: 2+3, box: 8),
                  gridTile(row: 2+6, column: 3+3, box: 8),
                  gridTile(row: 3+6, column: 1+3, box: 8),
                  gridTile(row: 3+6, column: 2+3, box: 8),
                  gridTile(row: 3+6, column: 3+3, box: 8),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                gridTile(row: 1+6, column: 1+6, box: 9),
                gridTile(row: 1+6, column: 2+6, box: 9),
                gridTile(row: 1+6, column: 3+6, box: 9),
                gridTile(row: 2+6, column: 1+6, box: 9),
                gridTile(row: 2+6, column: 2+6, box: 9),
                gridTile(row: 2+6, column: 3+6, box: 9),
                gridTile(row: 3+6, column: 1+6, box: 9),
                gridTile(row: 3+6, column: 2+6, box: 9),
                gridTile(row: 3+6, column: 3+6, box: 9),
              ],
            ),
          ),
        ],
      )
    );
  }
}
