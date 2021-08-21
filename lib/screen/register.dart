import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 130,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                textRegister(),
                SizedBox(
                  height: 30,
                ),
                getWidgetRegistrationCard()
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget textRegister() {
  return Text(
    "Register",
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget boxRegister() {
  return Container(
    margin: EdgeInsets.only(left: 30, top: 80, right: 30, bottom: 50),
    height: 400,
    width: 500,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Please enter your personal info",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget loginButton(BuildContext context) {
  return ButtonTheme(
    minWidth: 330.0,
    height: 55.0,
    child: RaisedButton(
      onPressed: () {
        print('You Click Sign Up');

        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return logIn();
        // }));
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

Widget emailText() {
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
      labelText: 'Eamil',
      counterText: 'counter',
      // icon: Icon(Icons.star),
      // prefixIcon: Icon(Icons.favorite),
      suffixIcon: Icon(Icons.mail),
    ),
  );
}

Widget passwordText() {
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
      labelText: 'Password',
      counterText: 'counter',
      // icon: Icon(Icons.star),
      // prefixIcon: Icon(Icons.favorite),
      suffixIcon: Icon(Icons.password),
    ),
  );
}

Widget getWidgetRegistrationCard() {
  return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 10.0,
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                  // key: _keyValidationForm,
                  child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Please enter your personal info',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        suffixIcon: Icon(Icons.perm_identity),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: RaisedButton(
                      onPressed: () {
                        print('You Click Sign Up');

                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return logIn();
                        // }));
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
                  ),
                ),
                //text field : user name
              ]))))); // title: login
}
