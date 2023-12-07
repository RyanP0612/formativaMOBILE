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
           spotfy("imagens/arabaoMusic.jpg", "ARABAO", "VOLTA PRA EUROPA CRIS"),
           spotfy("imagens/musica1.jpg", "RELAX", "ZZZZZZ"),
           spotfy("imagens/phonk.jpg", "UARRRR", "BORA TREINAR"),
           
          
           
           

          ], //children!!!
        )
      ),
    );
  }
}


class spotfy extends StatefulWidget {
  final String imagem;
  final String musica;
  final String descricao;
  
  

  
   const spotfy(this.imagem, this.musica,this.descricao,{super.key});

  @override
  State<spotfy> createState() => _spotfyState();
}

class _spotfyState extends State<spotfy> {

  int contplay = 0;

  // função setState monitora o estado das variaveis da classe statefull
  void _increment_play(){
    setState(() {
      contplay ++;
    });
  }


  void _clean_counter(){
    setState(() {
      contplay = 0;
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
          widget.musica,
          style: const TextStyle(fontSize: 30),
                ),
    
        Text(
          "${widget.descricao}\n",
          style: const TextStyle(fontSize: 20), textAlign: TextAlign.left,
                ),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(color: const Color.fromARGB(255, 255, 255, 255), width: 200,height: 50,
            child: Text("Quantidade de playronas: $contplay ", style: const TextStyle(fontSize: 20),textAlign: TextAlign.left, 
            ),
            ),
            ElevatedButton(
            onPressed: _increment_play, child: const Icon(Icons.playlist_play)),
          ],
        ),
        
       
      ],
    );
  }
}

