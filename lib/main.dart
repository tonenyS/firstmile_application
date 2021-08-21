import 'package:firstmile/screen/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firstmile/screen/login.dart';

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
              height: 170,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                loginButton(context),
                SizedBox(
                  height: 10,
                ),
                registerClick(context)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget logoWelcome() {
  return Container(
      width: 180.0, height: 180.0, child: Image.asset('images/logo.jpg'));
}

Widget loginButton(BuildContext context) {
  return ButtonTheme(
    minWidth: 330.0,
    height: 55.0,
    child: RaisedButton(
      onPressed: () {
        print('You Click Sign Up');

        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return logIn();
        }));
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

Widget registerClick(BuildContext context) {
  TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue);
  return RichText(
    text: TextSpan(
      style: defaultStyle,
      children: <TextSpan>[
        TextSpan(text: 'Sing up here '),
        TextSpan(
            text: 'Register new',
            style: linkStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("Register");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              }),
      ],
    ),
  );
}
