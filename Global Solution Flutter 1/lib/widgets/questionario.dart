import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final String pergunta;
  final List<Map<String, Object>> respostas;
  final String imagem;
  final void Function(int) quandoResponder;

  Questionario({
    required this.pergunta,
    required this.respostas,
    required this.imagem,
    required this.quandoResponder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 200, // Define a altura máxima para a imagem
          ),
          child: Image.asset(
            imagem,
            fit: BoxFit.contain, // BoxFit.contain para ajustar a imagem ao espaço disponível
            width: double.infinity,
          ),
        ),
        SizedBox(height: 20),
        Text(
          pergunta,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        ...respostas.map((resp) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 89, 167, 230)), // Cor de fundo do botão
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Cor do texto do botão
              ),
              child: Text(resp['texto'] as String),
              onPressed: () => quandoResponder(resp['pontuacao'] as int),
            ),
          );
        }).toList(),
      ],
    );
  }
}
