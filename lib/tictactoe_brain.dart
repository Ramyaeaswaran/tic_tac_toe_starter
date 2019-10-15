import 'package:flutter/material.dart';
import 'package:tic_tac_toe_starter/input_page.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tictac {
  String move = 'Player X move';
  String currentPlayer = 'X';

  Icon player1 = Icon(Icons.close, size: 50);
  Icon player2 = Icon(FontAwesomeIcons.circle, size: 50);
  List<List<Icon>> board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
  List<List<Color>> boardcolor = [
    [Colors.white38, Colors.white38, Colors.white38],
    [Colors.white38, Colors.white38, Colors.white38],
    [Colors.white38, Colors.white38, Colors.white38],
  ];
 /* List<List<Color>> changecolor = [
    [Colors.lightGreen, Colors.lightGreen, Colors.lightGreen],
    [Colors.lightGreen, Colors.lightGreen, Colors.lightGreen],
    [Colors.lightGreen, Colors.lightGreen, Colors.lightGreen],
  ];*/

  void updated(int row, int col) {
    if (board[row][col] == null) {
      if (currentPlayer == 'X') {
        move = 'Player O move';
        board[row][col] = player1;
        currentPlayer = 'O';
      } else if (currentPlayer == 'O') {
        move = 'Player X move';
        board[row][col] = player2;
        currentPlayer = 'X';
      }
    }
  }

  winner(List<List<Icon>> board) {
    if ((board[0][0] == player1 && board[0][1] == player1 && board[0][2] == player1) ||
        board[1][0] == player1 && board[1][1] == player1 && board[1][2] == player1 ||
        board[2][0] == player1 && board[2][1] == player1 && board[2][2] == player1 ||
        board[0][0] == player1 && board[1][0] == player1 && board[2][0] == player1 ||
        board[0][1] == player1 && board[1][1] == player1 && board[2][1] == player1 ||
        board[0][2] == player1 && board[1][2] == player1 && board[2][2] == player1 ||
        board[0][0] == player1 && board[1][1] == player1 && board[2][2] == player1 ||
        board[0][2] == player1 && board[1][1] == player1 && board[2][0] == player1) {
      winningcolor(board);
      move = 'X wins';
    } else if ((board[0][0] == player2 && board[0][1] == player2 && board[0][2] == player2) ||
        board[1][0] == player2 && board[1][1] == player2 && board[1][2] == player2 ||
        board[2][0] == player2 && board[2][1] == player2 && board[2][2] == player2 ||
        board[0][0] == player2 && board[1][0] == player2 && board[2][0] == player2 ||
        board[0][1] == player2 && board[1][1] == player2 && board[2][1] == player2 ||
        board[0][2] == player2 && board[1][2] == player2 && board[2][2] == player2 ||
        board[0][0] == player2 && board[1][1] == player2 && board[2][2] == player2 ||
        board[0][2] == player2 && board[1][1] == player2 && board[2][0] == player2) {
      winningcolor(board);
      move = 'O wins';
    }
  }
Color changecolor=Colors.lightGreen;
winningcolor(List<List<Icon>> board) {
  for (int i = 0; i < 3; i++) {
    if (board[i][0] == player1 && board[i][1] == player1 &&
        board[i][2] == player1) {
      boardcolor[i][0] = changecolor;
      boardcolor[i][1] = changecolor;
      boardcolor[i][2] = changecolor;
    }
    if (board[0][i] == player1 && board[1][i] == player1 &&
        board[2][i] == player1) {
      boardcolor[0][i] = changecolor;
      boardcolor[1][i] = changecolor;
      boardcolor[2][i] = changecolor;
    }
    if (board[i][0] == player2 && board[i][1] == player2 &&
        board[i][2] == player2) {
      boardcolor[i][0] = changecolor;
      boardcolor[i][1] = changecolor;
      boardcolor[i][2] = changecolor;
    }
    if (board[0][i] == player2 && board[1][i] == player2 &&
        board[2][i] == player2) {
      boardcolor[0][i] = changecolor;
      boardcolor[1][i] = changecolor;
      boardcolor[2][i] = changecolor;
    }
  }
  if (board[0][0] == player1 && board[1][1] == player1 &&
      board[2][2] == player1) {
    boardcolor[0][0] = changecolor;
    boardcolor[1][1] = changecolor;
    boardcolor[2][2] = changecolor;
  }
  if (board[0][2] == player1 && board[1][1] == player1 &&
      board[2][0] == player1) {
    boardcolor[0][2] = changecolor;
    boardcolor[1][1] = changecolor;
    boardcolor[2][0] = changecolor;
  }
  if (board[0][0] == player2 && board[1][1] == player2 &&
      board[2][2] == player2) {
    boardcolor[0][0] = changecolor;
    boardcolor[1][1] = changecolor;
    boardcolor[2][2] = changecolor;
  }
  if (board[0][2] == player2 && board[1][1] == player2 &&
      board[2][0] == player2) {
    boardcolor[0][2] = changecolor;
    boardcolor[1][1] = changecolor;
    boardcolor[2][0] = changecolor;
  }
}


void reset(){
  board = [
    [null, null, null],
    [null, null, null],
    [null, null, null]
  ];
   boardcolor = [
    [Colors.white38, Colors.white38, Colors.white38],
    [Colors.white38, Colors.white38, Colors.white38],
    [Colors.white38, Colors.white38, Colors.white38],
  ];
  currentPlayer = 'X';
  move ='Player X move';
}
}