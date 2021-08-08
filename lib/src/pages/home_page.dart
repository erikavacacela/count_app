import 'dart:html';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final textStyle = TextStyle(fontSize: 25);
  int conteo = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World Child!', style: textStyle),
            Text('$conteo', style: textStyle)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hello World');
        },
      )
    );
  }

}