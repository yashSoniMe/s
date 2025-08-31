import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s/Providers/choiceNumberProvider.dart';

class chooser extends StatefulWidget {
  const chooser({super.key});

  @override
  State<chooser> createState() => _chooserState();
}

class _chooserState extends State<chooser> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        choicer(choice_number: 1),
        choicer(choice_number: 2),
        choicer(choice_number: 3),
        choicer(choice_number: 4),
        choicer(choice_number: 5),
        choicer(choice_number: 6),
        choicer(choice_number: 7),
        choicer(choice_number: 8),
        choicer(choice_number: 9),

      ],
    );
  }
}

class choicer extends StatefulWidget {
  int choice_number;
  choicer({super.key, required this.choice_number});

  @override
  State<choicer> createState() => _choicerState();
}

class _choicerState extends State<choicer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChoiceNumberProvider>(
      builder: (context,providerModel,child) => InkWell(
          onTap: (){
            providerModel.changeChoice(widget.choice_number);
            },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: (providerModel.currentChoice==widget.choice_number) ? Colors.white : Colors.grey[200],
                border: Border.all(
                    color: Colors.black,
                    width: 0.5
                )
            ),
            child: Center(child: Text(widget.choice_number.toString(), style: const TextStyle(fontSize: 30,fontFamily: 'myFontFamily'),)),
          )
      ),
    );
  }
}

