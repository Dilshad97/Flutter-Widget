import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Radio_Button extends StatefulWidget {
  const Radio_Button({Key? key}) : super(key: key);

  @override
  _Radio_ButtonState createState() => _Radio_ButtonState();
}

class _Radio_ButtonState extends State<Radio_Button> {

  bool _value = false;
  int val = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                title: Text("Male"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = value as int;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Female"),
                leading: Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {
                      val = value as int;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ),
            ],
          )
        ),
        );
  }
}
