import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
  String input = '0';
  String output = '0';

  showButton(String button) {
    setState(() {
      if (input == '0') {
        input = button;
      } else {
        input += button;
      }
    });
  }
  calculate(){
    Parser p = Parser();
    Expression expression = p.parse(input);
    ContextModel cm = ContextModel();
    setState(() {
      output = expression.evaluate(EvaluationType.REAL, cm).toString();
    });

  }

  Widget container(String button) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: OutlineButton(
          color: Colors.deepPurpleAccent,
          textColor: Colors.purple,
          focusColor: Colors.green,
          textTheme: ButtonTextTheme.accent,
          child: Text(
            button,
            style: TextStyle(fontSize: 25),
          ),
          onPressed: () {
            showButton(button);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Calculator',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 25),
                child: Column(
                  children: [
                    Text(
                      input,
                      style: TextStyle(fontSize: 50),
                    ),
                    Text(output,style: TextStyle(fontSize: 30,color:Colors.grey),),
                  ],
                ),
              ),
              Expanded(
                child: Divider(),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      container('7'),
                      container('8'),
                      container('9'),
                      container('/'),
                    ],
                  ),
                  Row(
                    children: [
                      container('4'),
                      container('5'),
                      container('6'),
                      container('*'),
                    ],
                  ),
                  Row(
                    children: [
                      container('1'),
                      container('2'),
                      container('3'),
                      container('-'),
                    ],
                  ),
                  Row(
                    children: [
                      container('0'),
                      container('00'),
                      container('.'),
                      container('+'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FlatButton(
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            child: Text(
                              'C',
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () {
                              setState(() {
                                input = '0';
                                output = '0';
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FlatButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            child: Text(
                              '=',
                              style: TextStyle(fontSize: 25),

                            ),
                            onPressed: () {
                              calculate();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
