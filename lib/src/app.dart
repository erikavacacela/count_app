import 'package:flutter/material.dart';
import 'package:app_money/src/pages/count_page.dart';

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CountPage()
      ) 
    );
  }

}