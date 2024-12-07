import 'package:flutter/material.dart';
import 'package:heavenly/componentes/styles.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Text(
            'Favoritos',
            style: txtNunitoBold(30),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20,0,0),
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey[300],
            ),
          ),
           
            Padding(
                 padding: const EdgeInsets.fromLTRB(0,110,0,0),
                child: SizedBox(
                height: 500,
                width: double.infinity,
              
              child: Center(
              child: ListView(
              children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(37,0,0,10),
                child: Text('Você não tem imóveis favoritos',style: txtNunito300(25),),
              ),
              Center(child: Image.asset('assets/coracao.png', height: 50,)),
              
          ]
          )
          )
          )
        
      ),
    
  

              
            
          
        ],
      ),
    );
  }
}