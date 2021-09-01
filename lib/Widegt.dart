import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityList extends StatefulWidget {
  const OpacityList({Key? key}) : super(key: key);

  @override
  _OpacityState createState() => _OpacityState();
}

class _OpacityState extends State<OpacityList> {

  bool _visible= false;

  void _toggle() {
    setState(() {
     _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 100,
                  ),
                  color: Colors.red,
                  padding: EdgeInsets.all(10),
                  child: Text("Customer"),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100, left: 30),
                  color: Colors.red,
                  padding: EdgeInsets.all(10),
                  child: Text("Corporate"),
                ),
              ],
            ),
    Container(
    padding: EdgeInsets.all(20),
    child: Visibility(
       visible: _visible,
      child: TextField(
      decoration: InputDecoration(labelText: "Email or Phone"),
      ),
    ),
    ),
    Container(
    padding: EdgeInsets.all(20),
    child: TextField(
    decoration: InputDecoration(labelText: "Email or Phone"),
    ),
    ),
    Container(
    padding: EdgeInsets.all(20),
    child: TextField(
    decoration: InputDecoration(labelText: "Email or Phone"),
    ),
    ),
    Container(
    padding: EdgeInsets.all(20),
    child: TextField(
    decoration: InputDecoration(labelText: "Email or Phone"),
    ),
    ),
          ],
      ),
    ));
  }
}
