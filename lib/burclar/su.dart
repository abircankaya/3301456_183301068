import 'package:flutter/material.dart';

class SuGrubu extends StatelessWidget {
  const SuGrubu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SU GRUBU'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              'Yengeç: 21 Haziran-20 Temmuz    Akrep: 23 Ekim - 22 Kasım     Balık: 19 Şubat - 20 Mart',
              style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
