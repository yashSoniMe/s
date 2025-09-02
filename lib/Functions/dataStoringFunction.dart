List<List<int>> grid = List.generate(9, (_) => List.generate(9, (_) => 0));
void storeData(int row,int column,int value){
  grid[row-1][column-1]=value;
  print(grid);
}

void trigger(){
  SudokuSolver solver = SudokuSolver();
  List<List<int>> solvedPuzzle = solver.solve(grid);
  printGrid(solvedPuzzle);
}
/////////////////////////////////////////
class SudokuSolver {
  List<List<int>> solve(List<List<int>> grid) {
    List<List<int>> solvedGrid = grid.map((row) => List<int>.from(row)).toList();

    _solveRecursive(solvedGrid);

    return solvedGrid;
  }

  bool _solveRecursive(List<List<int>> grid) {
    for (int row = 0; row < 9; row++) {
      for (int col = 0; col < 9; col++) {
        if (grid[row][col] == 0) {
          for (int num = 1; num <= 9; num++) {
            if (_isValid(grid, row, col, num)) {
              grid[row][col] = num;

              if (_solveRecursive(grid)) {
                return true;
              }

              grid[row][col] = 0;
            }
          }
          return false;
        }
      }
    }
    return true;
  }

  bool _isValid(List<List<int>> grid, int row, int col, int num) {
    for (int c = 0; c < 9; c++) {
      if (grid[row][c] == num) {
        return false;
      }
    }

    for (int r = 0; r < 9; r++) {
      if (grid[r][col] == num) {
        return false;
      }
    }

    int startRow = row - (row % 3);
    int startCol = col - (col % 3);
    for (int r = 0; r < 3; r++) {
      for (int c = 0; c < 3; c++) {
        if (grid[r + startRow][c + startCol] == num) {
          return false;
        }
      }
    }

    return true;
  }
}

void printGrid(List<List<int>> grid) {
  for (int i = 0; i < 9; i++) {
    if (i % 3 == 0 && i != 0) {
      print("- - - - - - - - - - -");
    }
    String row = "";
    for (int j = 0; j < 9; j++) {
      if (j % 3 == 0 && j != 0) {
        row += "| ";
      }
      row += "${grid[i][j]} ";
    }
    print(row);
  }
}