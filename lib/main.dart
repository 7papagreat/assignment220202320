import 'package:flutter/material.dart';
import 'greetings.dart';
import 'register.dart';

void main() {
  runApp(
    MaterialApp(
      home: Login(),
    ),
  );
}

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  String? idNumber, password;
  final key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 500,
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Center(
              child: Text(
                "CRUX FLUTTER SUMMER GROUP",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xff2FC4B2),
                    fontSize: 35,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: key1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(30, 120, 30, 10),
                  child: Text(
                    "ID Number",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusColor: Color(0xff2FC4B2),
                      labelText: "Please enter your BITS ID number",
                    ),
                    onChanged: (String idN) {
                      this.idNumber = idN;
                    },
                    onSaved: (String? idN) {
                      this.idNumber = idN;
                    },
                    validator: (String? idN) {
                      if (idN == "") {
                        return "ID can't be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Please enter your password.",
                    ),
                    onChanged: (String? pwd) {
                      this.password = pwd;
                    },
                    onSaved: (String? pwd) {
                      this.password = pwd;
                    },
                    validator: (String? pwd) {
                      if (pwd == "") {
                        return "Password can't be empty";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: TextButton(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff2FC4B2),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (key1.currentState!.validate()) {
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
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  alignment: Alignment.center,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0xff2FC4B2),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(0, 85, 0, 0),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont' have an account ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Color(0xff2FC4B2),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Register();
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
