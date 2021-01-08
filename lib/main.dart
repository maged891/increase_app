import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(incresement_app());
}

class incresement_app extends StatefulWidget {
  @override
  _incresement_appState createState() => _incresement_appState();
}

class _incresement_appState extends State<incresement_app> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('myapp'),
          centerTitle: true,
        ),
        body: Center(
          child: Text(count.toString()),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: FlatButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Icon(Icons.minimize),
              ),
              title: Text('decrease'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: FlatButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(Icons.minimize),
              ),
              title: Text('increase'),
              backgroundColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
