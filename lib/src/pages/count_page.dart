import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _CountPageState();

}

class _CountPageState extends State<CountPage> {

  final _textStyle = TextStyle(fontSize: 25);
  int _conteo = 0;


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
            Text('Hello World Child!', style: _textStyle),
            Text('$_conteo', style: _textStyle)
          ],
        )
      ),

      floatingActionButton: _createButtons()
    );
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustract),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
    ]);
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _sustract() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

} 