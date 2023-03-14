import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class call extends StatefulWidget {
  const call({Key? key}) : super(key: key);

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  TextEditingController _value = TextEditingController();
  var numa = "";
  var numb = "";
  bool operator = false;
  var Selectedoperator = "";
  var result = "";
  SetValues(String num) {
    setState(() {
      if (operator) // opeator clicked
      {
        numb = numb + num;
        _value.text = numb;
      } else {
        numa = numa + num;
        _value.text = numa;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            Spacer(),
            TextFormField(
              controller: _value,
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    alignment: Alignment.bottomRight,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                          backgroundColor: Colors.yellow[900],
                          onPressed: () {
                            setState(() {
                              operator = false;
                              _value.text = "";
                              numa = "";
                              numb = "";
                              result = "0";
                            });
                          },
                          child: Center(
                            child: Text(
                              "C",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                          backgroundColor: Colors.yellow[900],
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              "%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                          backgroundColor: Colors.yellow[900],
                          onPressed: () {
                            setState(() {
                              _value.text = _value.text
                                  .substring(0, _value.text.length - 1);
                              if (operator) // opeator clicked
                              {
                                numb = _value.text;
                              } else {
                                numa = _value.text;
                              }
                            });
                          },
                          child: Center(
                            child: Icon(
                              Icons.backspace_outlined,
                              color: Colors.black,
                              size: 33,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        child: FloatingActionButton(
                          foregroundColor: Colors.green,
                          backgroundColor: Colors.yellow[900],
                          onPressed: () {
                            _value.text = "/";
                            Selectedoperator = "/";
                            operator = true;
                          },
                          child: Center(
                            child: Text(
                              "/",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("7");
                              },
                              child: Center(
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("8");
                              },
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("9");
                              },
                              child: Center(
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.yellow[900],
                              onPressed: () {
                                _value.text = "*";
                                operator = true;
                                Selectedoperator = "*";
                              },
                              child: Center(
                                child: Text(
                                  "*",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("4");
                              },
                              child: Center(
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("5");
                              },
                              child: Center(
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("6");
                              },
                              child: Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.yellow[900],
                              onPressed: () {
                                _value.text = "-";
                                Selectedoperator = "-";
                                operator = true;
                              },
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("1");
                              },
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("2");
                              },
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("3");
                              },
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.yellow[900],
                              onPressed: () {
                                _value.text = "+";
                                Selectedoperator = "+";
                                operator = true;
                              },
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("00");
                              },
                              child: Center(
                                child: Text(
                                  "00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.black26,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues("0");
                              },
                              child: Center(
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.black26,
                              onPressed: () {
                                SetValues(".");
                              },
                              child: Center(
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.yellow[900],
                              onPressed: () {
                                double first = double.parse(numa);
                                double second = double.parse(numb);
                                if (Selectedoperator == "+") {
                                  {
                                    result = (first + second).toString();
                                  }
                                }
                                if (Selectedoperator == "-") {
                                  result = (first - second).toString();
                                }
                                if (Selectedoperator == "*") {
                                  result = (first * second).toString();
                                }
                                if (Selectedoperator == "/") {
                                  result = (first / second).toString();
                                }

                                _value.text = result;
                              },
                              child: Center(
                                child: Text(
                                  "=",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40,
                                      color: Colors.black),
                                ),
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
          ],
        ),
      ),
    );
  }
}
