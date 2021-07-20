import 'package:flutter/material.dart';

String? id = 'Naman';
void update(String? value) {
  id = value!;
}

class Greetings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
              height: 200,
              width: 500,
              child: Center(
                child: Text(
                  ' CRUX FLUTTER\nSUMMER GROUP',
                  style: TextStyle(
                      color: Color(0xff2FC4B2),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(30, 100, 30, 20),
              alignment: Alignment.center,
              child: Text("welcomes you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                id!,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text("Have a great journey ahead!!",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
