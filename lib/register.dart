import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'greetings.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  String? idNumber, password;
  final key1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              height: 100,
              width: 1000,
              decoration: BoxDecoration(
                color: Color(0xff2FC4B2),
              ),
              alignment: Alignment.center,
              child: Text(
                'CRUX FLUTTER SUMMER GROUP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: this.key1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(30, 40, 30, 5),
                    child: Text(
                      'ID Number',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Please enter your BITS ID Number.',
                      ),
                      onChanged: (String? idN) {
                        this.idNumber = idN;
                      },
                      onSaved: (String? idN) {
                        this.idNumber = idN;
                      },
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please enter a valid ID Number';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Please enter your Password.',
                      ),
                      onChanged: (String? pwd) {
                        this.password = pwd;
                      },
                      onSaved: (String? pwd) {
                        this.password = pwd;
                      },
                      validator: (String? pwd) {
                        if (pwd!.isEmpty) {
                          return 'Please enter a valid password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 5),
                    child: Text(
                      'Batch',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: MyDropdownButton(),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Text(
                          'Receive Regular Updates ',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: MySwitch(),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
                    child: Text(
                      'Are you excited for this !!',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: MyRadio(),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
                    child: TextButton(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff2FC4B2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (this.key1.currentState!.validate()) {
                          update(this.idNumber);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Greetings();
                              },
                            ),
                          );
                        } else {
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account "),
                        TextButton(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xff2FC4B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySwitch extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: this.value,
      onChanged: (value) {
        setState(() {
          this.value = value;
        });
      },
      activeColor: Color(0xff2FC4B2),
      activeTrackColor: Color(0xff2FC4B2),
      inactiveThumbColor: Color(0xff2FC4B2),
    );
  }
}

class MyRadio extends StatefulWidget {
  @override
  RadioState createState() => RadioState();
}

class RadioState extends State<MyRadio> {
  String? value = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio(
              groupValue: this.value,
              value: 'Yes',
              onChanged: (String? value) {
                setState(() {
                  this.value = value;
                });
              },
              activeColor: Colors.grey,
            ),
            Text('Yes'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio(
              groupValue: this.value,
              value: 'No',
              onChanged: (String? value) {
                setState(() {
                  this.value = value;
                });
              },
              activeColor: Colors.grey,
            ),
            Text('No'),
          ],
        ),
      ],
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  static List<String> items = <String>['2020', '2019', '2018', '2017', '2016'];
  String? value = items.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String?>(
      value: this.value,
      isExpanded: true,
      items: items
          .map(
            (item) => DropdownMenuItem<String?>(
              value: item,
              child: Text(item),
            ),
          )
          .toList(),
      onChanged: (String? value) {
        setState(() {
          this.value = value;
        });
      },
    );
  }
}
