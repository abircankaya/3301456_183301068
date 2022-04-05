import 'package:flutter/material.dart';

class HavaGrubu extends StatelessWidget {
  const HavaGrubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HAVA GRUBU'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'İkizler: 21 Mayıs - 20 Haziran    Terazi: 23 Eylül - 22 Ekim     Kova: 20 Ocak - 18 Şubat',
              style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
