import 'package:flutter/material.dart';

class EndPageSL extends StatelessWidget{
  int _punteggio;

  EndPageSL(this._punteggio);

  @override
  Widget build(BuildContext context) {
    return new EndPageSF(punteggio: this._punteggio);
  }
}

class EndPageSF extends StatefulWidget {
  EndPageSF({Key key, this.punteggio}) : super(key: key);

  int punteggio;

  @override
  _EndPageState createState() => new _EndPageState(punteggio);
}

class _EndPageState extends State<EndPageSF> {
  int _punteggio;

  Size _screenSize;
  int _fontRatio = 8;

  BuildContext _context;

  _EndPageState(int _punteggio);

  @override
  Widget build(BuildContext context) {

    debugPrint(_punteggio.toString());

    _context = context;

    _screenSize = MediaQuery.of(context).size;

    Scaffold page = new Scaffold(
        body: new Container(
            decoration: new BoxDecoration(color: Colors.redAccent),
            child: new Center(
              child: new ListView(
                children: [
                  new Padding(padding: new EdgeInsets.symmetric(vertical: _screenSize.height / 8, horizontal: _screenSize.width / 8),),
                  new Text(
                    'HAI PERSO!'/**\n\nPUNTEGGIO FINALE\n' + _punteggio.toString()*/,
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: _screenSize.width / _fontRatio,
                      color: Colors.white,
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.symmetric(vertical: _screenSize.height / 20, horizontal: _screenSize.width / 20),),
                  new Column(
                    children: [
                      new MaterialButton(
                        height: _screenSize.width / (1.1 * 4),
                        minWidth: _screenSize.width / (1.1 * 2),
                        color: Colors.grey,
                        child: new Icon(
                          Icons.keyboard_return,
                          color: Colors.white,
                          size: _screenSize.width / (1.1 * 5),
                        ),
                        onPressed: () { Navigator.pop(context, true); },
                      ),
                      new Padding(padding: new EdgeInsets.symmetric(vertical: _screenSize.width / 80, horizontal: _screenSize.width / 800),),
                      new MaterialButton(
                        height: _screenSize.width / (1.1 * 4),
                        minWidth: _screenSize.width / (1.1 * 2),
                        color: Colors.grey,
                        child: new Icon(
                          Icons.cancel,
                          color: Colors.white,
                          size: _screenSize.width / (1.1 * 5),
                        ),
                        onPressed: () { Navigator.pop(context, false); },
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
    );

    return page;
  }
}