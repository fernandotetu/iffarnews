import 'package:IFFarNew/noticia_model.dart';
import 'package:flutter/material.dart';

class NoticiaDetalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // recebe os dados da tela anteior
    NoticiaModel noticia = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  noticia.titulo,
                  style: TextStyle(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                background: Image.network(
                  noticia.img,
                  fit: BoxFit.cover,
                )),
          ),
        ],
        body: Column(
          children: [
            Text(noticia.titulo),
            Text(noticia.dataHora),
            Text(noticia.preview),
          ],
        ),
      ),
    );
  }
}
