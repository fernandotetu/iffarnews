import 'dart:convert';

import 'package:IFFarNew/noticia.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'noticia_detalhes.dart';

void main() {
  runApp(new IFFarApp());
}

class IFFarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IFFarNews",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        'detalhes': (_) => NoticiaDetalhe(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text("IFFarNews "),
        ),
        body: FutureBuilder(
            future: buscaNoticias(),
            builder: (contexto, resposta) {
              // acesso a lista de noticias
              var noticias = resposta.data;

              return ListView.builder(
                  itemCount: noticias.length,
                  itemBuilder: (context, index) {
                    // pega os dados da api
                    String titulo = noticias[index]['titulo'];
                    String data = noticias[index]['data'];
                    String img = noticias[index]['img'];
                    String intro = noticias[index]['intro'];
                    return Noticia(img, titulo, data, intro);
                  });
            }),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Editais"),
          ],
        ),
      ),
    );
  }

  buscaNoticias() async {
    String urlApi = 'http://200.132.54.54/api';
    // reliza a requiosao http
    var resposta = await http.get(urlApi);
    print(resposta.body);
    // conversao para forma json
    var jsonObject = jsonDecode(resposta.body);
    return jsonDecode(jsonObject['noticias']);
  }
}
