import 'package:flutter/material.dart';

import 'HomeScreen.dart';


class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  String email = "ujjvalsinha@gmail.com";
  String password = "sinha";
  Color col;
  final emailobj = TextEditingController();
  final passwordobj = TextEditingController();
  succesful() {
    setState(() {
      if (emailobj.text == email && passwordobj.text == password) {
        name = "Login Successful";
        col = Color(0xFF019031);
      } else {
        name = 'Login Failed!';
        col = Color(0xFFBA2F16);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
              child: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 8,top: 20),
                child: new FlutterLogo(
                  size: 80.0,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(bottom: 25),
                child: Text(
                  "Sign in to continue,",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 18),
                // margin: EdgeInsets.fromLTRB(25, 7, 25, 15),
                child: TextField(
                  controller: emailobj,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4834DF))),
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: "Username",
                      hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(
                        Icons.person,
                        size: 35,
                        color: Color(0xFF4834DF),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              Container(
               
                child: TextField(
                  controller: passwordobj,
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF4834DF))),
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 28,
                        color: Color(0xFF4834DF),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 20, 25, 15),
              ),
              MaterialButton(
                  color: Color(0xFF4834DF),
                  height: 50,
                  minWidth: 365,
                  splashColor: Colors.green,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>HomeScreen()),
                    );
                  }),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 5, 25, 15),
              ),
              SizedBox(
                height: 2,
                width: 365,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 5, 25, 15),
              ),
              MaterialButton(
                  color: Color(0xFF4834DF),
                  height: 50,
                  minWidth: 365,
                  splashColor: Colors.green,
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    
                  }),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 25, color: col),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Text("",
                    
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
