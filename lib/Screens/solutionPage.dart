import 'package:flutter/material.dart';
import 'package:s/Widgets/viewerTile.dart';

class solutionPage extends StatelessWidget {

  List<List<int>> answer;
  solutionPage({super.key, required this.answer});
  late List<int> ans = answer.expand((row) => row).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: GridView.builder(
            itemCount: 81,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 9),
            itemBuilder: (context, index) => viewerTile(num: ans[index]),
          ),
        ),
      ),
    );
  }
}