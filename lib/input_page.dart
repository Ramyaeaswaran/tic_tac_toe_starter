import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/tictac.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        //padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
       // constraints: BoxConstraints.expand(),

          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Text('Tic-Tac-Toe',
                  style: TextStyle( fontFamily: 'Montserrat',
                  fontSize: 35.0,
                  ),
                  ),
                ),
                 ),
               Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: Center(
                    child: Text('Player X to Move',
                      style: TextStyle(
                        fontSize: 20.0,
                    ),
                  ),
              ),
               ),
              Expanded(flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                  ],
                ),
              ),
              Expanded(flex:1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                    Expanded(
                      child: new ReuseableCard(),
                    ),
                  ],
                ),
              ),
                   Padding(
                     padding: const EdgeInsets.only(bottom: 30),
                     child: RaisedButton(
                        child: new Text('Reset'),
                        color: Color(0xFF52567d).withOpacity(0.5),
                ),
                   ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  final Color color;
  final Widget child;

  ReuseableCard({this.color = const Color(0xFF52567d), this.child});

// const ReuseableCard({
//    Key key,
//  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
