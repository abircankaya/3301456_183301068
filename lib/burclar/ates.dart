import 'package:flutter/material.dart';

class AtesGrubu extends StatelessWidget {
  const AtesGrubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATES GRUBU'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Koç: 21 Mart - 19 Nisan      Aslan: 23 Temmuz - 22 Ağustos     Yay: 23 Kasım - 21 Aralık',
              style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
