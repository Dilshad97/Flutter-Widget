import 'package:flutter/material.dart';
import 'package:practice/practice_listview.dart';
import 'package:practice/task/Grid_View_builder.dart';

import 'Carousel_Slider.dart';
import 'Circular_List_View.dart';
import 'Circular_indicator.dart';
import 'Grid_view.dart';
import 'ListTIle.dart';
import 'Widegt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //darkTheme: ThemeData.dark(),

      //First Screen of Slider App
      home:MyHomePage(),
    );
  }
}
