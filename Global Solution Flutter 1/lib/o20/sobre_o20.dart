import 'package:flutter/material.dart';

class SobreO20Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre o O20'),
      ),
      body: Container(
        color: Color.fromARGB(255, 230, 230, 250), // Cor de fundo para o body
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre o O20',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'O O20, que teve seu embrião nos últimos dois ciclos do G20, na Indonésia e na Índia, terá um papel importante em dar voz à sociedade civil, considerando organizações não governamentais, iniciativa privada, povos indígenas, comunidades tradicionais e cientistas. O grupo fortalece e consolida a presença do oceano no G20, ao integrar os países que antecederam e que sucederão o Brasil em sua presidência, e os Grupos de Trabalho das Trilhas de Sherpas e de Finanças.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'A criação do Oceans20 pela Presidência Brasileira no G20 é um marco histórico de reconhecimento do papel central do oceano nas agendas globais de clima, energia e meio ambiente e que, apesar de ser um oceano global e interligado, é plural em suas características. A agenda do oceano é um dos quatro pilares do Grupo de Trabalho sobre Sustentabilidade Climática e Ambiental, coordenado pelo Ministério do Meio Ambiente, e permeia outros grupos de trabalho, dada a característica transversal do tema. O Oceans 20 é coordenado pela Cátedra Unesco para a Sustentabilidade do Oceano da Universidade de São Paulo, em colaboração com o Fórum Econômico Mundial, o Pacto Global da ONU – Rede Brasil e Ocean Stewardship Coalition, o Fundo Brasileiro para a Biodiversidade (FUNBIO) e o Instituto Nacional de Pesquisas Oceânicas (INPO).',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
