import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calc(),
    ),
  );
}

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String output = '0';

  String _output = '0';

  double num1 = 0.0;

  double num2 = 0.0;

  String operand = '';

  buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      output = '0';
      _output = '0';
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = '';
    } else if (buttonText == '.') {
      if (_output.contains('.')) {
        print('Already contains a decimal');
        return;
      } else {
        _output += buttonText;
      }
    } else if (buttonText == '=') {
      num2 = double.parse(output);
      if (operand == '+') {
        _output = (num1 + num2).toString();
      } else if (operand == '-') {
        _output = (num1 - num2).toString();
      } else if (operand == '*') {
        _output = (num1 * num2).toString();
      } else if (operand == '/') {
        _output = (num1 / num2).toString();
      }
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    } else {
      _output += buttonText;
    }
    print(output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlineButton(
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
        onPressed: () {
          buttonPressed(buttonText);
        },
        padding: EdgeInsets.all(30),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 12),
              child: Text(
                output,
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    buildButton('/'),
                    buildButton('7'),
                    buildButton('8'),
                    buildButton('9')
                  ],
                ),
                Row(
                  children: [
                    buildButton('*'),
                    buildButton('6'),
                    buildButton('5'),
                    buildButton('4')
                  ],
                ),
                Row(
                  children: [
                    buildButton('-'),
                    buildButton('3'),
                    buildButton('2'),
                    buildButton('1')
                  ],
                ),
                Row(
                  children: [
                    buildButton('+'),
                    buildButton('0'),
                    buildButton('00'),
                    buildButton('.')
                  ],
                ),
                Row(
                  children: [
                    buildButton('AC'),
                    buildButton('='),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
