import 'package:flutter/material.dart';

void main() {
  return runApp(Calculator());
}

String input = '', value = ' ', finalResult= '', sign = '';
int value1=0, value2=0, result=0;
double dresult=0.0;

class Calculator extends StatefulWidget {
  const Calculator ({ Key? key }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'LibreBaskerville'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFAD1457),
          title: Text(
            'Calculator',
            style: TextStyle(
             fontSize: 36.0,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text(input, style: TextStyle(fontSize: 38.0), ),
                    Text(finalResult, style: TextStyle(fontSize: 38.0), ),
                  ],)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '1';
                          value += '1';
                        });
                      },
                      child: Container(
                        child: Text('1', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFAD1457),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '2';
                          value += '2';
                        });
                      },
                      child: Container(
                        child: Text('2', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFC21858),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '3';
                          value += '3';
                        });
                      },
                      child: Container(
                        child: Text('3', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFD81860),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input += '+';
                          value1 = int.parse(value);
                          value = '';
                          sign += '+';
                        });
                      },
                      child: Container(
                        child: Text('+', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFE91E63),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '4';
                          value += '4';
                        });
                      },
                      child: Container(
                        child: Text('4', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFE91E63),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '5';
                          value += '5';
                        });
                      },
                      child: Container(
                        child: Text('5', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFD81860),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '6';
                          value += '6';
                        });
                      },
                      child: Container(
                        child: Text('6', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFC21858),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input += '-';
                          value1 = int.parse(value);
                          value = '';
                          sign += '-';
                        });
                      },
                      child: Container(
                        child: Icon(Icons.remove, color: Colors.white, size: 24.0),
                        color: Color(0xFFAD1457),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '7';
                          value += '7';
                        });
                      },
                      child: Container(
                        child: Text('7', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFAD1457),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '8';
                          value += '8';
                        });
                      },
                      child: Container(
                        child: Text('8', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFC21858),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '9';
                          value += '9';
                        });
                      },
                      child: Container(
                        child: Text('9', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFD81860),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input += 'x';
                          value1 = int.parse(value);
                          value = '';
                          sign += 'x';
                        });
                      },
                      child: Container(
                        child: Icon(Icons.clear, color: Colors.white, size: 24.0),
                        color: Color(0xFFE91E63),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input += '0';
                          value += '0';
                        });
                      },
                      child: Container(
                        child: Text('0', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFE91E63),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:() {
                        setState(() {
                          input = '';
                          value = '';
                          value1 = 0;
                          value2 = 0;
                          result = 0;
                          finalResult = '';
                          sign = '';
                          dresult = 0.0;
                        });
                      },
                      child: Container(
                        child: Text('C', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFD81860),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value2 = int.parse(value);
                          if(sign == '+') result = value1 + value2;
                          else if(sign== '-') result = value1 - value2;
                          else if(sign == 'x') result = value1 * value2;
                          else if(sign == '/') dresult = value1/value2;
                          if(dresult == 0.0) finalResult = result.toString();
                          else finalResult = dresult.toString();
                        });
                      },
                      child: Container(
                        child: Text('=', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFC21858),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input += '/';
                          value1 = int.parse(value);
                          value = '';
                          sign += '/';
                        });
                      },
                      child: Container(
                        child: Text('/', style: TextStyle(fontSize: 36, color: Colors.white),),
                        color: Color(0xFFAD1457),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}