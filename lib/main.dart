import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro/soma.dart';
import 'calculator.dart';
import 'subtracao.dart';

void main() => runApp(const ExemploInicial());

class ExemploInicial extends StatefulWidget {
  const ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}

class _ExemploInicial extends State {
  var _currentPage = 0;
  final _pages = [const Calculator(), const Somar(), const Subtrair()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _pages.elementAt(_currentPage),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.calculate), label: "Calculadora"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.plus_one), label: "Soma"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.remove_circle_outline), label: "Subtracao"),
            ],
            currentIndex: _currentPage,
            fixedColor: Colors.blue,
            onTap: (int inIndex) {
              setState(() {
                _currentPage = inIndex;
              });
            }),
      ),
    );
  }
}
