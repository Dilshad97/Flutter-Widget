import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Checkbox11 extends StatefulWidget {
  const Checkbox11({Key? key}) : super(key: key);

  @override
  _Checkbox11State createState() => _Checkbox11State();
}

class _Checkbox11State extends State<Checkbox11> {
  bool value = false;

  //bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Checkbox Example'),
      ),
      body: Column(
        children: [
         CheckboxListTile(
           controlAffinity: ListTileControlAffinity.leading,
           title: Text('I agree to the Terms and Conditions'),
           //checkColor: Colors.greenAccent,
           //activeColor: Colors.red,
           value: this.value,
           onChanged: (bool? value) {
             setState(() {
               this.value = value!;
             });
           },
         ),
          Container(
              //child: Text("hello"),
              )
        ],
      ),
    );
  }
}
