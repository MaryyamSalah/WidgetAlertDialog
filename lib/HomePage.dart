import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showdialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.cyanAccent[100],
            title: Text("Skip"),
            content: Text("Do you want to skip this app?"),
            actions: [
              MaterialButton(
                onPressed: () {},
                child: Text("yes"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[900],
        body: Center(
          child: MaterialButton(
            color: Colors.orange[200],
            onPressed: _showdialog,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Show Dialog',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ));
  }
}
