import 'package:flutter/material.dart';

class Noticia extends StatelessWidget {
  var titulo;
  var dataHora;
  var preview;
  String img;

  Noticia(this.img, this.titulo, this.dataHora, this.preview) {
    if (this.img.isEmpty) {
      this.img =
          'https://miro.medium.com/max/3000/1*nT-QbKDbz06OoS3xzpvcAQ.jpeg';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
        child: Row(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/imgs/loadind.gif'),
              image: NetworkImage(this.img),
              width: 120,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.titulo,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(this.dataHora),
                  Text(
                    this.preview,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
