import 'package:flutter/material.dart';

class Noticia extends StatelessWidget {
  var titulo;
  var dataHora;
  var preview;

  Noticia(this.titulo, this.dataHora, this.preview);

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
              image: NetworkImage(
                  'https://miro.medium.com/max/3000/1*nT-QbKDbz06OoS3xzpvcAQ.jpeg'),
              width: 120,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(this.titulo,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(this.dataHora),
                Text(this.preview)
              ],
            )
          ],
        ),
      ),
    );
  }
}
