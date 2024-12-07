import 'package:heavenly/componentes/card.dart';
import 'package:heavenly/componentes/slide.dart';
import 'package:flutter/material.dart';
import 'package:heavenly/componentes/styles.dart';
import 'package:heavenly/screen/busca.dart';
import 'package:heavenly/screen/favoritos.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 255, 246, 225),
              child: DrawerHeader(
                child: CircleAvatar(
                  child: Image.asset('assets/avatarIcon.png'),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              trailing: const Icon(Icons.arrow_right),
              
              leading: const Icon(Icons.home), title: const Text('Home'), subtitle: const Text('Va pra o menu'),
               ),
               ListTile( leading: const Icon(Icons.search), title: const Text('Search'), subtitle: const Text('Procure por brinquedos'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const TelaDeBusca()));
                },
                  
               ),
               ListTile( leading: const Icon(Icons.star), title: const Text('Favoritos'), subtitle: const Text('Favoritos'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const Favoritos()));
                },),
                           ListTile(
              onTap: () {},
              trailing: const Icon(Icons.arrow_right),
              
              leading: const Icon(Icons.shopping_cart), title: const Text('eee'), subtitle: const Text('Va pra o menu'),
               ),
               ListTile( leading: const Icon(Icons.search), title: const Text('Search'), subtitle: const Text('Procure por brinquedos'),
                onTap: () {},
               ),
               ListTile( leading: const Icon(Icons.star), title: const Text('Favoritos'), subtitle: const Text('Favoritos'),
                onTap: () {},),

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 246, 225),
        title: const Text('Heavenly Home'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        children: [
          const Slide(),
           Wrap(
            children: [
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0,30,0,0),
                child: cardHistorico1(500, 250,'assets/local.png', const Color.fromARGB(255, 255, 255, 255), 'Cidade', 'Busque por Cidade',''),
                
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 246, 225)),
                      onPressed:(){}, child: const Text('Buscar Imóveis', style: TextStyle( color: Colors.black, fontSize: 20 ), )),
                  ),
              ),

              


        ],
      ),
      
      Padding(
  padding: const EdgeInsets.fromLTRB(0,110,0,0),
  child: Container(
    height: 500,
    width: double.infinity,
    color: const Color.fromARGB(255, 231, 228, 223),
    child: Center(
      child: ListView(
        children: [
          Image.asset('assets/poltrona.png'),
           Padding(
            padding: const EdgeInsets.fromLTRB(20,0,0,0),
            child: Text('Alugar bem, sem\n complicação e fiador',style: txtNunitoBold(30),),
          )
        ],
      ),
    ),
  ),
)
        ],
      ),
      
      
      
    );
    
  }
}