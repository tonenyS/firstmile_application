import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
                loginButton(),
                SizedBox(
                  height: 15.0,
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

Widget loginButton() {
  return ButtonTheme(
    minWidth: 320.0,
    height: 69.0,
    child: RaisedButton(
      onPressed: () {},
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

Widget logoWelcome() {
  return Image.network(
    'https://www.img.in.th/images/5a240db816ba4f39ee27b5d6182ae024.png',
    width: 320,
    height: 150,
  );
}


Widget registerClick() {
  return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
              text: "Sing up here",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: " Register New ",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline, 
              ),
            ),
          ])));
}
