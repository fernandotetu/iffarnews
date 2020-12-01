import 'package:IFFarNew/noticia.dart';
import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("IFFarNews "),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Noticia('fixo' + index.toString(), 'hoje', 'abc');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Editais"),
          ],
        ),
      ),
    );
  }
}
