import 'package:flutter/material.dart';
class viewerTile extends StatelessWidget {
  int num;
  viewerTile({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: Text(num.toString(),style: TextStyle(fontSize: 30,fontFamily: 'myFontFamily'),)),
    );
  }
}
