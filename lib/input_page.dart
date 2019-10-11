import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Player{
  X,O
}
class _InputPageState extends State<InputPage> {
 String currentPlayer ='X';
  Icon player1=Icon(Icons.close,size:50);
  Icon player2 =Icon(FontAwesomeIcons.circle,size:50);
  List<List<Icon>> board=[[null,null,null],[null,null,null],[null,null,null]];
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
                    style: TextStyle(fontFamily: 'Montserrat',
                      fontSize: 35.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                  child: Text('Player $currentPlayer to Move',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback:board[0][0] ,
                       callback: (){
                        if(board[0][0] == null){
                       if(currentPlayer == 'X'){
                         board[0][0]=player1;
                         currentPlayer = 'O';
                      }else if(currentPlayer == 'O'){
                        board[0][0]=player2;
                        currentPlayer = 'X';
                      }}
                         setState(() {
                         });
                        }
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: board[0][1],
                    callback:() {
                          if(board[0][1]==null){
                      if(currentPlayer == 'X'){
                        board[0][1]=player1;
                        currentPlayer = 'O';
                      }else if(currentPlayer == 'O'){
                        board[0][1]=player2;
                        currentPlayer = 'X';
                      }}
                      setState(() {});
                    },
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: board[0][2],
                        callback:() {
                        if(board[0][2]==null){
                          if(currentPlayer == 'X'){
                            board[0][2]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[0][2]=player2;
                            currentPlayer = 'X';
                          }}
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: board[1][0],
                        callback:() {
                         if(board[1][0]==null){
                          if(currentPlayer == 'X'){
                            board[1][0]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[1][0]=player2;
                            currentPlayer = 'X';
                          }}
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback:board[1][1] ,
                        callback:() {
                     if(board[1][1]==null){
                          if(currentPlayer == 'X'){
                            board[1][1]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[1][1]=player2;
                            currentPlayer = 'X';
                          }}
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback:board[1][2] ,
                        callback:() {
                          if(board[1][2]==null)
                          if(currentPlayer == 'X'){
                            board[1][2]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[1][2]=player2;
                            currentPlayer = 'X';
                          }
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: board[2][0] ,
                        callback:() {
                          if(board[2][0]==null){
                          if(currentPlayer == 'X'){
                            board[2][0]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[2][0]=player2;
                            currentPlayer = 'X';
                          }}
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback:board[2][1] ,
                        callback:() {
                          if(board[2][1]==null){
                          if(currentPlayer == 'X'){
                            board[2][1]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[2][1]=player2;
                            currentPlayer = 'X';
                          }}
                          setState(() {});
                        },
                      ),
                    ),
                    Expanded(
                      child: new ReuseableCard(
                        tapcallback: board[2][2],
                        callback:() {
                          if(board[2][2]==null){
                          if(currentPlayer == 'X'){
                            board[2][2]=player1;
                            currentPlayer = 'O';
                          }else if(currentPlayer == 'O'){
                            board[2][2]=player2;
                            currentPlayer = 'X';
                          }}
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: RaisedButton(
                  onPressed: (){
                    board=[[null,null,null],[null,null,null],[null,null,null]];
                    currentPlayer ='X';
                    setState(() {
                    });
                  },
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
  final Widget tapcallback;
  final Function callback;
  ReuseableCard({this.color = const Color(0xFF52567d),this.tapcallback=const Text(''),this.callback});

// const ReuseableCard({
//    Key key,
//  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Container(
         child: FlatButton(
           child: tapcallback,
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
