import 'package:flutter/material.dart';
import 'package:tic_tac_toe_starter/input_page.dart';
void main() {
  runApp(MaterialApp(
    home: TicTacToePage(),
  ));
}

class TicTacToePage extends StatefulWidget {
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: InputPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF328da8),
          scaffoldBackgroundColor: Color(0xFF328da8),
        //  accentColor: Color(0xFFd91a63),
        )
    );
  }
}
