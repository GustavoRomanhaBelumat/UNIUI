import'package:flutter/material.dart';
import '../NavigationContainer/NavigationHandler.dart';
void main() => runApp(WelcomePage());

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}
@override
class _WelcomePageState extends State<WelcomePage> {
  var contents = "Inicio";
  void navigatorTo() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            title: new Text(""),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: new Container(
            color: Colors.transparent,
          ),
        ),
        new Container(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Image(image: AssetImage('gitassets/logo.png')),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Faça seu login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14.0,
                      color: const Color(0xFFffffff),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: RaisedButton(
                      key: null,
                      onPressed: (navigatorTo),
                      color: const Color(0xFF3B5998),
                      child: Text(
                        'F A C E B O O K',
                        style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            fontSize: 12.0,
                            color: const Color(0xFFE0E0E0),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200,
                  height: 30,
                  child: RaisedButton(
                      key: null,
                      onPressed: navigatorTo,
                      color: const Color(0xFFe0e0e0),
                      child: Text(
                        "E M A I L",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF7B051A),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto"),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Ainda não é cadastrado? Tap aqui!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 11.0,
                      color: const Color(0xFFffffff),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Roboto"),
                )
              ]),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment(1.0, -0.2),
              colors: [
                const Color(0xFFc43f79),
                const Color(0xFF400d3e),
              ],
              stops: [
                0.1,
                1.0,
              ],
            ),
          ),
        ),
      ],
    );
  }
}