import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskOne extends StatefulWidget {
  const TaskOne({Key? key}) : super(key: key);

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
          actions: [
            IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.comment)
            ),

          ],

          // leading: IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.home),
          // ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Dilshad Alam"),
                  accountEmail: Text("rayeendilshan@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "D",
                      style: TextStyle(fontSize: 40),
                    ),
                  )
              ),
              ListTile(
                leading: Icon(Icons.home),title:Text("View profile"),
                onTap: (
                ){
                  Navigator.of(context).pop();
              }
              ),
              ListTile(
                leading: Icon(Icons.contacts),title: Text("View Contact List"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.access_alarm),title:Text("Set Alarm"),
                onTap: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
        body: Container(
          child: Row(
            children: [
              Image.asset("product.png")
            ],
          ),
        ),
      ),
    );
  }
}
