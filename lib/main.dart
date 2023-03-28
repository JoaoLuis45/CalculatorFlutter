import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = '0';
  double primeiroNumero = 0.0;
  String operacao = '';
  String resultado = '';
  void calcular(String tecla) {
    switch (tecla) {
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '0':
        setState(() {
          numero += tecla;
          if (numero.contains('.')) {
            double doubleNumero = double.parse(numero);
            numero = doubleNumero.toString();
          } else {
            int intNumero = int.parse(numero);
            numero = intNumero.toString();
          }
        });
        break;
      case 'AC':
        setState(() {
          numero = '0';
          operacao = '';
        });
        break;
      case '<X':
        setState(() {
          if (numero.length > 0) {
            numero = numero.substring(0, numero.length - 1);
          }
        });
        break;
      case '+':
        if (operacao != '') {
          switch (operacao) {
          case '+':
            resultado = (primeiroNumero + double.parse(numero)).toString();

            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }

            break;
          case '-':
            resultado = (primeiroNumero - double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case 'X':
            resultado = (primeiroNumero * double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case '/':
            if (numero == '0') {
              setState(() {
                numero = '0';
              });
            } else {
              resultado = (primeiroNumero / double.parse(numero)).toString();
              List<String> resultadoPartes = resultado.split('.');
              List<String> resultadoPartesTwo =
                  (primeiroNumero.toString()).split('.');
              if ((resultadoPartes[1] * 1 == '0') &&
                  resultadoPartesTwo[1] * 1 == '0') {
                int resultadoFormatado = int.parse(resultadoPartes[0]);
                setState(() {
                  numero = resultadoFormatado.toString();
                });
              } else {
                double resultadoFormatado = double.parse(resultado);
                setState(() {
                  numero = resultadoFormatado.toString();
                  numero = double.parse(numero).toStringAsFixed(2).toString();
                });
              }
            }
            break;
        }
        }
        primeiroNumero = double.parse(numero);
        numero = '0';
        setState(() {
          operacao = tecla;
        });
        break;
      case '-':
      if (operacao != '') {
          switch (operacao) {
          case '+':
            resultado = (primeiroNumero + double.parse(numero)).toString();

            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }

            break;
          case '-':
            resultado = (primeiroNumero - double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case 'X':
            resultado = (primeiroNumero * double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case '/':
            if (numero == '0') {
              setState(() {
                numero = '0';
              });
            } else {
              resultado = (primeiroNumero / double.parse(numero)).toString();
              List<String> resultadoPartes = resultado.split('.');
              List<String> resultadoPartesTwo =
                  (primeiroNumero.toString()).split('.');
              if ((resultadoPartes[1] * 1 == '0') &&
                  resultadoPartesTwo[1] * 1 == '0') {
                int resultadoFormatado = int.parse(resultadoPartes[0]);
                setState(() {
                  numero = resultadoFormatado.toString();
                });
              } else {
                double resultadoFormatado = double.parse(resultado);
                setState(() {
                  numero = resultadoFormatado.toString();
                  numero = double.parse(numero).toStringAsFixed(2).toString();
                });
              }
            }
            break;
        }
        }
        primeiroNumero = double.parse(numero);
        numero = '0';
        setState(() {
          operacao = tecla;
        });
        break;
      case 'X':
      if (operacao != '') {
          switch (operacao) {
          case '+':
            resultado = (primeiroNumero + double.parse(numero)).toString();

            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }

            break;
          case '-':
            resultado = (primeiroNumero - double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case 'X':
            resultado = (primeiroNumero * double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case '/':
            if (numero == '0') {
              setState(() {
                numero = '0';
              });
            } else {
              resultado = (primeiroNumero / double.parse(numero)).toString();
              List<String> resultadoPartes = resultado.split('.');
              List<String> resultadoPartesTwo =
                  (primeiroNumero.toString()).split('.');
              if ((resultadoPartes[1] * 1 == '0') &&
                  resultadoPartesTwo[1] * 1 == '0') {
                int resultadoFormatado = int.parse(resultadoPartes[0]);
                setState(() {
                  numero = resultadoFormatado.toString();
                });
              } else {
                double resultadoFormatado = double.parse(resultado);
                setState(() {
                  numero = resultadoFormatado.toString();
                  numero = double.parse(numero).toStringAsFixed(2).toString();
                });
              }
            }
            break;
        }
        }
        primeiroNumero = double.parse(numero);
        numero = '0';
        setState(() {
          operacao = tecla;
        });
        break;
      case '/':
      if (operacao != '') {
          switch (operacao) {
          case '+':
            resultado = (primeiroNumero + double.parse(numero)).toString();

            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }

            break;
          case '-':
            resultado = (primeiroNumero - double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case 'X':
            resultado = (primeiroNumero * double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case '/':
            if (numero == '0') {
              setState(() {
                numero = '0';
              });
            } else {
              resultado = (primeiroNumero / double.parse(numero)).toString();
              List<String> resultadoPartes = resultado.split('.');
              List<String> resultadoPartesTwo =
                  (primeiroNumero.toString()).split('.');
              if ((resultadoPartes[1] * 1 == '0') &&
                  resultadoPartesTwo[1] * 1 == '0') {
                int resultadoFormatado = int.parse(resultadoPartes[0]);
                setState(() {
                  numero = resultadoFormatado.toString();
                });
              } else {
                double resultadoFormatado = double.parse(resultado);
                setState(() {
                  numero = resultadoFormatado.toString();
                  numero = double.parse(numero).toStringAsFixed(2).toString();
                });
              }
            }
            break;
        }
        }
        primeiroNumero = double.parse(numero);
        numero = '0';
        setState(() {
          operacao = tecla;
        });
        break;
      case '=':
        switch (operacao) {
          case '+':
            resultado = (primeiroNumero + double.parse(numero)).toString();

            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }

            break;
          case '-':
            resultado = (primeiroNumero - double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case 'X':
            resultado = (primeiroNumero * double.parse(numero)).toString();
            List<String> resultadoPartes = resultado.split('.');
            List<String> resultadoPartesTwo =
                (primeiroNumero.toString()).split('.');
            if ((resultadoPartes[1] * 1 == '0') &&
                resultadoPartesTwo[1] * 1 == '0') {
              int resultadoFormatado = int.parse(resultadoPartes[0]);
              setState(() {
                numero = resultadoFormatado.toString();
              });
            } else {
              double resultadoFormatado = double.parse(resultado);
              setState(() {
                numero = resultadoFormatado.toString();
                numero = double.parse(numero).toStringAsFixed(2).toString();
              });
            }
            break;
          case '/':
            if (numero == '0') {
              setState(() {
                numero = '0';
              });
            } else {
              resultado = (primeiroNumero / double.parse(numero)).toString();
              List<String> resultadoPartes = resultado.split('.');
              List<String> resultadoPartesTwo =
                  (primeiroNumero.toString()).split('.');
              if ((resultadoPartes[1] * 1 == '0') &&
                  resultadoPartesTwo[1] * 1 == '0') {
                int resultadoFormatado = int.parse(resultadoPartes[0]);
                setState(() {
                  numero = resultadoFormatado.toString();
                });
              } else {
                double resultadoFormatado = double.parse(resultado);
                setState(() {
                  numero = resultadoFormatado.toString();
                  numero = double.parse(numero).toStringAsFixed(2).toString();
                });
              }
            }
            break;
        }
        operacao = '';
        break;
      default:
        numero += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  operacao,
                  style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numero,
                  style: TextStyle(fontSize: 70),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('AC'),
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 48),
                ),
                GestureDetector(
                  onTap: () => calcular('<X'),
                  child: Image.asset('assets/images/back.png',width: 60,),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('7'),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('8'),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('9'),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(onTap: () => calcular('/'), 
                child: Image.asset('assets/images/div.png',width: 40,),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('4'),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('5'),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('6'),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('X'),
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('1'),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('2'),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('3'),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('-'),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calcular('0'),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (numero.contains('.')) {
                    } else {
                      calcular('.');
                    }
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('='),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => calcular('+'),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 48,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
