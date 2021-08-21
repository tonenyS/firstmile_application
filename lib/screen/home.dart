import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Row(
          children: <Widget>[Icon(Icons.textsms),Text("HOME")],
      )),
    body: Center(
      child:Padding(
        padding: EdgeInsets.all(150),
        child: RaisedButton(
          color: Colors.indigo[400],
          child: Row(
            children: <Widget>[Text("back"), Icon(Icons.navigate_next)],
          ),
          onPressed: (){
            Navigator.pop(context);
          },
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)),
        ),
      )),
    );
  }
}