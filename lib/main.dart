import 'package:flutter/material.dart';
import 'package:quiz/assets/buttons.dart';
import 'assets/quiz.dart';
import 'assets/resultado.dart';
void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  final _perguntas = const [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é seu instrutor favorito',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      },
    ];

    bool get temPerguntaSelecionada{
      return _perguntaSelecionada < _perguntas.length;
    }
  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        temPerguntaSelecionada ? 
        _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body:  temPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Button(t, _responder)).toList(),
          ],
        ) 
        : Resultado(),
      ),
      );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
