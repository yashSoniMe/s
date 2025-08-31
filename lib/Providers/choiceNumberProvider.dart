import 'package:flutter/material.dart';

class ChoiceNumberProvider extends ChangeNotifier{
  int currentChoice =0;
  void changeChoice(int choice){
    currentChoice=choice;
    notifyListeners();
  }
}