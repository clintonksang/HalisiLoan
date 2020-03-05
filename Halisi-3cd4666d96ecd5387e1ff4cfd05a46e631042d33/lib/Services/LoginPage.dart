import 'package:flutter/material.dart';
import 'package:halisi/Home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool eye = true;

  void _toggle() {
    setState(() {
      eye = !eye;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
            child: new FlatButton(
              child: new Text(
                "Sign up",
                style: new TextStyle(color: Colors.grey, fontSize: 17),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              highlightColor: Colors.cyan,
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Text(
                "Log in",
                style: new TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              new SizedBox(
                height: 70,
              ),
              new TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Email",
                ),
              ),
              new SizedBox(
                height: 30,
              ),
              new TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration: new InputDecoration(
                  labelText: "Password",
                  suffixIcon: new GestureDetector(
                    child: new Icon(
                      Icons.remove_red_eye,
                    ),
                    onTap: _toggle,
                  ),
                ),
                obscureText: eye,
              ),
              new SizedBox(
                height: 30,
              ),
              new SizedBox(
                height: 50,
                child: new RaisedButton(
                  child: new Text("Log in",
                      style: new TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  elevation: 15.0,
                  shape: StadiumBorder(),
                  splashColor: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyHomePage()));
                  },
                ),
              ),
              new SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
