import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Person Counter", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  int _people = 0;
  String _infoText = "Pode entrar!";
  

  void _changePeople(int delta) {
    setState(() {
      if (_people + delta >= 0 && _people + delta <= 15) {
        _people += delta;
        if ( _people == 1) {
         
          _infoText = "Tem $_people pessoa";
        } 
        else if (_people == 0 && delta < 1) {
          _infoText = "Não tem ninguém";
        }

        else if (_people == 15) {
          _infoText = "Está lotado!";
        }

        else {
          _infoText = "Tem $_people pessoas";
          }

      } else if(_people + delta > 15) {
        _infoText = "Não pode entrar mais que $_people";
      } else {
        _infoText = "Pra que menos que isso? XD";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/restaurant.jpg", fit: BoxFit.cover, height: 1000.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}
