import 'package:flutter/material.dart';

class ToprakGrubu extends StatelessWidget {
  const ToprakGrubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOPRAK GRUBU'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Boğa : 20 Nisan - 20 Mayıs     Başak : 23 Ağustos - 22 Eylül     Oğlak : 23 Kasım - 21 Aralık',
              style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
