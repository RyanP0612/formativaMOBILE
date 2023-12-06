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
        title: const Text("MANGE TRIPS "),
      ),
      body: ListView(
        children: const [
           netflix("imagens/corra.jpg", "CORRA", "Venha conhecer o melhor filme de \n                     drama", 20),
           netflix("imagens/indianaJones.jpg", " INDIANA JONES", "Venha assistir indiana jones", 30),
           netflix("imagens/starWars.jpg", "STAR WARS 9", "Guerra das estrelas 9", 15),
           netflix("imagens/titanic.jpg", "TITANIC", "Nem Deus afunda?", 15),
           netflix("imagens/paris.jpg", "Paris", "Venha conhecer O MELHOR JOGADOR DO MUNDO!!!", 10000),
          
           
           

          ], //children!!!
        )
      ),
    );
  }
}


class netflix extends StatefulWidget {
  final String imagem;
  final String filme;
  final String descricao;
  final double preco_ingresso;
  

  
   const netflix(this.imagem, this.filme,this.descricao, this.preco_ingresso,{super.key});

  @override
  State<netflix> createState() => _netflixState();
}

class _netflixState extends State<netflix> {

  int contpolt = 0;
  double total = 0;
  // função setState monitora o estado das variaveis da classe statefull
  void _increment_poltronas(){
    setState(() {
      contpolt ++;
    });
  }


  void _clean_counter(){
    setState(() {
      contpolt = 0;
      
      total = 0;
    });
  }
  void _calc(){
    setState(() {
      total = (contpolt * widget.preco_ingresso);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: Colors.blue,width: 393,height: 250,
        child: Image.asset(widget.imagem,
                    fit: BoxFit.fill,
        ),
        ),
        Text(
          widget.filme,
          style: const TextStyle(fontSize: 30),
                ),
        Text(
          "R\$ ${widget.preco_ingresso}/ preço do ingresso",
          style: const TextStyle(fontSize: 20, color: Colors.red),
                ),

        Text(
          "${widget.descricao}\n",
          style: const TextStyle(fontSize: 20), textAlign: TextAlign.left,
                ),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(color: const Color.fromARGB(255, 255, 255, 255), width: 200,height: 50,
            child: Text("Quantidade de poltronas: $contpolt ", style: const TextStyle(fontSize: 20),textAlign: TextAlign.left, 
            ),
            ),
            ElevatedButton(
            onPressed: _increment_poltronas, child: const Icon(Icons.add)),
          ],
        ),
       
        Text(
          "Valor total $total R\$",
          style: const TextStyle(fontSize: 20), textAlign: TextAlign.left,
                ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             ElevatedButton(
            onPressed: _clean_counter, child: const Text("Limpar")),
            ElevatedButton(onPressed: _calc, child: const Text("calcular valor"))
          ],
        ),
      ],
    );
  }
}

