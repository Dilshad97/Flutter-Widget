import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Model.dart';
class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              padding: new EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  new CheckboxListTile(
                      title: new Text(
                        checkBoxListTileModel[index].title,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5),
                      ),
                      value: checkBoxListTileModel[index].isCheck,
                      secondary: Container(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          checkBoxListTileModel[index].img,
                          fit: BoxFit.cover,
                        ),
                      ),
                      onChanged: (bool ? val) {
                        itemChange(val!, index);
                      })
                ],
              ),
            );
          }),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}