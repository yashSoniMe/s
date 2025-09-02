import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s/Functions/dataStoringFunction.dart';
import 'package:s/Providers/choiceNumberProvider.dart';

class gridTile extends StatefulWidget {

  gridTile({required this.row,required this.column,required this.box});
  int row,column,box,value=0;

  @override
  State<gridTile> createState() => _gridTileState();
}

class _gridTileState extends State<gridTile> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Consumer<ChoiceNumberProvider>(
        builder: (context,providerModel,child)=> InkWell(
          onTap: (){
            setState(() {
              widget.value=providerModel.currentChoice;
              storeData(widget.row,widget.column,widget.value);
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 0.5
              )
            ),
            child: Center(child: Text((widget.value==0) ? "" : widget.value.toString() , style: const TextStyle(fontSize: 30,fontFamily: 'myFontFamily'),)),
          ),
        ),
      ),
    );
  }
}
