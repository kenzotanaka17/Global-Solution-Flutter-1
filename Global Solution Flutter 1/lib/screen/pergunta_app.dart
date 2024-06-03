import 'package:flutter/material.dart';
import '../widgets/questionario.dart';
import '../widgets/resultado.dart';
import '../o20/sobre_o20.dart';

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = [
    {
      'texto': 'Qual é o objetivo principal do O20?',
      'respostas': [
        {'texto': 'Dar voz à sociedade civil sobre questões oceânicas', 'pontuacao': 1},
        {'texto': 'Explorar novos recursos oceânicos', 'pontuacao': 0},
        {'texto': 'Desenvolver novas tecnologias marítimas', 'pontuacao': 0},
        {'texto': 'Promover o turismo marítimo', 'pontuacao': 0},
      ],
      'imagem': 'assets/images/logo.png',
    },
    {
      'texto': 'Qual é o maior oceano do mundo?',
      'respostas': [
        {'texto': 'Oceano Atlântico', 'pontuacao': 0},
        {'texto': 'Oceano Índico', 'pontuacao': 0},
        {'texto': 'Oceano Pacífico', 'pontuacao': 1},
        {'texto': 'Oceano Ártico', 'pontuacao': 0},
      ],
      'imagem': 'assets/images/pacific.png',
    },
    {
      'texto': 'Qual oceano banha a costa leste dos Estados Unidos?',
      'respostas': [
        {'texto': 'Oceano Pacífico', 'pontuacao': 0},
        {'texto': 'Oceano Índico', 'pontuacao': 0},
        {'texto': 'Oceano Atlântico', 'pontuacao': 1},
        {'texto': 'Oceano Antártico', 'pontuacao': 0},
      ],
      'imagem': 'assets/images/atlantic.png',
    },
    {
      'texto': 'Quem coordena o O20?',
      'respostas': [
        {'texto': 'Universidade de São Paulo', 'pontuacao': 1},
        {'texto': 'Harvard University', 'pontuacao': 0},
        {'texto': 'Oxford University', 'pontuacao': 0},
        {'texto': 'Stanford University', 'pontuacao': 0},
      ],
      'imagem': 'assets/images/usp.png',
    },
    {
      'texto': 'Quais são os pilares do Grupo de Trabalho sobre Sustentabilidade Climática e Ambiental?',
      'respostas': [
        {'texto': 'Clima, Energia, Meio Ambiente e Oceano', 'pontuacao': 1},
        {'texto': 'Clima, Agricultura, Meio Ambiente e Economia', 'pontuacao': 0},
        {'texto': 'Clima, Tecnologia, Saúde e Oceano', 'pontuacao': 0},
        {'texto': 'Clima, Educação, Meio Ambiente e Turismo', 'pontuacao': 0},
      ],
      'imagem': 'assets/images/sustainability.png',
     
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, // Define a cor de fundo azul
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 89, 167, 230), // Cor de fundo do AppBar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.games), // Primeiro ícone
              SizedBox(width: 8),
              Text('Jogo O20'),
              SizedBox(width: 8),
              Icon(Icons.waves), // Segundo ícone
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.info_outline),
              color: Color.fromARGB(255, 8, 51, 57),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SobreO20Page()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.refresh),
              color: Color.fromARGB(255, 8, 51, 57),
              onPressed: _reiniciarQuestionario,
            ),
          ],
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                pergunta: _perguntas[_perguntaSelecionada]['texto'] as String,
                respostas: _perguntas[_perguntaSelecionada]['respostas'] as List<Map<String, Object>>,
                imagem: _perguntas[_perguntaSelecionada]['imagem'] as String,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}
