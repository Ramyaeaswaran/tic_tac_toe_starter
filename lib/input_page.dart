import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tic_tac_toe_starter/tictactoe_brain.dart';



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Tictac logic = Tictac();

 // String move = 'Player X move';
  String currentPlayer = 'X';
  Icon player1 = Icon(Icons.close, size: 50);
  Icon player2 = Icon(FontAwesomeIcons.circle, size: 50);
  List<List<Icon>> board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];

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
                  child: Text(
                    'Tic-Tac-Toe',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 35.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Text(
                    logic.move,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[0][0],
                        callback: () {
                          logic.updated(0,0);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[0][0],
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[0][1],
                        callback: () {
                          logic.updated(0,1);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[0][1],
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[0][2],
                        callback: () {
                          logic.updated(0,2);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[0][2],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[1][0],
                        callback: () {
                          logic.updated(1,0);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[1][0],
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[1][1],
                        callback: () {
                          logic.updated(1,1);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[1][1],
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback:logic.board[1][2],
                        callback: () {
                          logic.updated(1,2);
                          logic.winner(logic.board);
                          setState(() {});
                        },
                        color: logic.boardcolor[1][2],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[2][0],
                        callback: () {
                          logic.updated(2,0);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[2][0],
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[2][1],
                        callback: () {
                          logic.updated(2,1);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[2][1],
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: logic.board[2][2],
                        callback: () {
                          logic.updated(2,2);
                          logic.winner(logic.board);
                          setState(() {
                          });
                        },
                        color: logic.boardcolor[2][2],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: RaisedButton(
                  onPressed: () {
                   logic.reset();
                    setState(() {});
                  },
                  child: new Text('Reset',style: TextStyle(fontSize: 20),),
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
  final Widget tapcallback;
  final Function callback;
final Widget child;

  ReuseableCard(
      {this.color =Colors.white38,
      this.tapcallback = const Text(''),
      this.callback,
      this.child});

// const ReuseableCard({
//    Key key,
//  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child:AnimatedOpacity(
          duration: Duration(milliseconds: 600),
          opacity: tapcallback== null ? 0.0: 1.0,
          child: tapcallback,
        ),
        onPressed: callback,
      ),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
