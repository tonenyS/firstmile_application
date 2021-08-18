import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firstmile/login.dart';
void main() {
  runApp(MyApp());
}

//สร้าง widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 250,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[logoWelcome()],
            ),
            SizedBox(
              height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                loginButton(context),
                SizedBox(
                  height: 10,
                ),
                registerClick()
              ],
            ),
          ],
        ),
      ),
    );
  }
}


Widget logoWelcome() {
  return Image.network(
    'https://www.img.in.th/images/5a240db816ba4f39ee27b5d6182ae024.png',
    width: 320,
    height: 150,
  );
}


Widget loginButton(BuildContext context) {
  return ButtonTheme(
    minWidth: 330.0,
    height: 55.0,
    child: RaisedButton(
      onPressed: () {
        print('You Click Sign Up');

        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => logIn());
        Navigator.of(context).push(materialPageRoute);
      },
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(15.0),
      ),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          // fontStyle: FontStyle.italic,
        ),
      ),
    ),
  );
}

Widget registerClick() {
  return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
              text: "Sing up here ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "Register new ",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ])));
}
