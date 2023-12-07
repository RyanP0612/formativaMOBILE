import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Disciplinas"),
        ),
        body: ListView(
          children: [
            DisciplinaCard("Matemática", "Estudo de operações", "Prof. Daniel"),
            DisciplinaCard("História", "decoreba", "Prof. Andre"),
            DisciplinaCard("Ciências", "Explorando o mundo natural", "Prof. Neymar"),
            DisciplinaCard("Inglês", "ingres", "Prof. Sim"),
            DisciplinaCard("Educação Física", "descansar", "Prof. A"),
          ],
        ),
      ),
    );
  }
}

class DisciplinaCard extends StatelessWidget {
  final String nome;
  final String descricao;
  final String professor;

  const DisciplinaCard(this.nome, this.descricao, this.professor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nome,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Professor: $professor",
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            descricao,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
